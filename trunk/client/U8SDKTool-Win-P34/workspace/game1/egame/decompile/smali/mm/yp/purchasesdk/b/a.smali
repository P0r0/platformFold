.class public Lmm/yp/purchasesdk/b/a;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lmm/yp/purchasesdk/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/yp/purchasesdk/b/a;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const/16 v0, 0x4b0

    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v1, "utf-8"

    invoke-interface {v3, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v1, 0x0

    :goto_1d
    const/4 v4, 0x1

    if-eq v2, v4, :cond_88

    packed-switch v2, :pswitch_data_9c

    :cond_23
    :goto_23
    :pswitch_23
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_1d

    :pswitch_28
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Provider"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lmm/yp/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aProvider = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_50} :catch_51
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_50} :catch_7f

    goto :goto_23

    :catch_51
    move-exception v1

    sget-object v2, Lmm/yp/purchasesdk/b/a;->TAG:Ljava/lang/String;

    const-string v3, "failed to read mmiap.xml excepiton. "

    invoke-static {v2, v3, v1}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_59
    return v0

    :cond_5a
    :try_start_5a
    const-string v4, "Mark"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmm/yp/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aMark = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5a .. :try_end_7e} :catch_51
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_7e} :catch_7f

    goto :goto_23

    :catch_7f
    move-exception v1

    sget-object v2, Lmm/yp/purchasesdk/b/a;->TAG:Ljava/lang/String;

    const-string v3, "failed to read mmiap.xml. io excetion "

    invoke-static {v2, v3, v1}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_59

    :cond_88
    :try_start_88
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_98

    sget-object v1, Lmm/yp/purchasesdk/b/a;->TAG:Ljava/lang/String;

    const-string v2, "md5data error: "

    invoke-static {v1, v2}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_95
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_88 .. :try_end_95} :catch_51
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_95} :catch_7f

    const/16 v0, 0x4b4

    goto :goto_59

    :cond_98
    const/16 v0, 0x4b2

    goto :goto_59

    nop

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_23
        :pswitch_23
        :pswitch_28
    .end packed-switch
.end method

.method public static a(Lmm/yp/purchasesdk/a/a;)Ljava/lang/Boolean;
    .registers 11

    const/16 v9, 0x4ba

    const/16 v8, 0x44f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v0, 0x3e9

    invoke-static {v0}, Lmm/yp/purchasesdk/PurchaseCode;->setStatusCode(I)V

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/yp/purchasesdk/a/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->b()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmm/yp/purchasesdk/a/a;->a(Z)V

    invoke-virtual {p0}, Lmm/yp/purchasesdk/a/a;->a()Lmm/yp/purchasesdk/PayInfo;

    move-result-object v1

    invoke-static {}, Lmm/yp/purchasesdk/PurchaseCode;->getStatusCode()I

    move-result v0

    invoke-virtual {v1, v0}, Lmm/yp/purchasesdk/PayInfo;->setStatusCode(I)V

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {v1}, Lmm/yp/purchasesdk/b/a;->a(Lmm/yp/purchasesdk/PayInfo;)Lmm/yp/purchasesdk/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/yp/purchasesdk/a/a;->a(Lmm/yp/purchasesdk/a/c;)V

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/yp/purchasesdk/a/a;->a(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_40
    return-object v0

    :cond_41
    invoke-static {}, Lmm/yp/purchasesdk/d/a;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_5e

    sget-object v0, Lmm/yp/purchasesdk/b/a;->TAG:Ljava/lang/String;

    const-string v2, "read mmiap.xml false "

    invoke-static {v0, v2}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Lmm/yp/purchasesdk/PurchaseCode;->setStatusCode(I)V

    invoke-static {}, Lmm/yp/purchasesdk/PurchaseCode;->getStatusCode()I

    move-result v0

    invoke-virtual {v1, v0}, Lmm/yp/purchasesdk/PayInfo;->setStatusCode(I)V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_40

    :cond_5e
    invoke-static {}, Lmm/yp/purchasesdk/e/c;->a()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_a3

    invoke-static {v2}, Lmm/yp/purchasesdk/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lmm/yp/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "md5 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_94

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_a3

    :cond_94
    invoke-static {v8}, Lmm/yp/purchasesdk/PurchaseCode;->setStatusCode(I)V

    invoke-static {}, Lmm/yp/purchasesdk/PurchaseCode;->getStatusCode()I

    move-result v0

    invoke-virtual {v1, v0}, Lmm/yp/purchasesdk/PayInfo;->setStatusCode(I)V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_40

    :cond_a3
    invoke-static {}, Lmm/yp/purchasesdk/e/c;->a()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_106

    sget-object v3, Lmm/yp/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "md5data signContent MD5 is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lmm/yp/purchasesdk/fingerprint/IdentifyApp;->md5([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lmm/yp/purchasesdk/fingerprint/IdentifyApp;->md5([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmm/yp/purchasesdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x4b2

    if-eq v3, v0, :cond_106

    if-ne v0, v9, :cond_ef

    sget-object v0, Lmm/yp/purchasesdk/b/a;->TAG:Ljava/lang/String;

    const-string v1, "paycode error: "

    invoke-static {v0, v1}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Lmm/yp/purchasesdk/PurchaseCode;->setStatusCode(I)V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_40

    :cond_ef
    sget-object v2, Lmm/yp/purchasesdk/b/a;->TAG:Ljava/lang/String;

    const-string v3, "classes.des so error: "

    invoke-static {v2, v3}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lmm/yp/purchasesdk/PurchaseCode;->setStatusCode(I)V

    invoke-static {}, Lmm/yp/purchasesdk/PurchaseCode;->getStatusCode()I

    move-result v0

    invoke-virtual {v1, v0}, Lmm/yp/purchasesdk/PayInfo;->setStatusCode(I)V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_40

    :cond_106
    invoke-static {}, Lmm/yp/purchasesdk/e/c;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v1}, Lmm/yp/purchasesdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lmm/yp/purchasesdk/PayInfo;)Lmm/yp/purchasesdk/a/c;

    move-result-object v0

    if-nez v0, :cond_122

    const/16 v0, 0x4b9

    invoke-static {v0}, Lmm/yp/purchasesdk/PurchaseCode;->setStatusCode(I)V

    invoke-static {}, Lmm/yp/purchasesdk/PurchaseCode;->getStatusCode()I

    move-result v0

    invoke-virtual {v1, v0}, Lmm/yp/purchasesdk/PayInfo;->setStatusCode(I)V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_40

    :cond_122
    invoke-virtual {p0, v0}, Lmm/yp/purchasesdk/a/a;->a(Lmm/yp/purchasesdk/a/c;)V

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/yp/purchasesdk/a/a;->a(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_40
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "<ProgramId>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "<Mark>"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmm/yp/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "md5data signContent is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lmm/yp/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "md5data signContentlength  is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    goto :goto_f
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lmm/yp/purchasesdk/PayInfo;)Lmm/yp/purchasesdk/a/c;
    .registers 5

    sget-object v0, Lmm/yp/purchasesdk/b/a;->TAG:Ljava/lang/String;

    const-string v1, "getProductInfo "

    invoke-static {v0, v1}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lmm/yp/purchasesdk/d/a;

    invoke-direct {v1}, Lmm/yp/purchasesdk/d/a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :try_start_15
    invoke-static {p0, p1, p2}, Lmm/yp/purchasesdk/b/a;->b(Ljava/lang/String;Ljava/lang/String;Lmm/yp/purchasesdk/PayInfo;)Lmm/yp/purchasesdk/a/c;
    :try_end_18
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_15 .. :try_end_18} :catch_1a
    .catch Lorg/xml/sax/SAXException; {:try_start_15 .. :try_end_18} :catch_1f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_24

    move-result-object v0

    :goto_19
    return-object v0

    :catch_1a
    move-exception v1

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_19

    :catch_1f
    move-exception v1

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_19

    :catch_24
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19
.end method

.method private static a(Lmm/yp/purchasesdk/PayInfo;)Lmm/yp/purchasesdk/a/c;
    .registers 11

    const v9, 0x3dcccccd    # 0.1f

    const v8, -0x9a00

    const/high16 v4, -0x1000000

    new-instance v0, Lmm/yp/purchasesdk/a/c;

    invoke-direct {v0}, Lmm/yp/purchasesdk/a/c;-><init>()V

    new-instance v1, Lmm/yp/purchasesdk/b/b;

    invoke-direct {v1}, Lmm/yp/purchasesdk/b/b;-><init>()V

    const-string v2, "appname"

    iput-object v2, v1, Lmm/yp/purchasesdk/b/b;->i:Ljava/lang/String;

    const-string v2, "\u5e94\u7528\u540d\u79f0\uff1a"

    iput-object v2, v1, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmm/yp/purchasesdk/b/b;->mValue:Ljava/lang/String;

    iput v4, v1, Lmm/yp/purchasesdk/b/b;->d:I

    iget-object v2, v1, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmm/yp/purchasesdk/a/c;->c(Ljava/lang/String;)V

    iget-object v2, v1, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lmm/yp/purchasesdk/a/c;->a(Ljava/lang/String;Lmm/yp/purchasesdk/b/b;)V

    iget-object v1, v1, Lmm/yp/purchasesdk/b/b;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmm/yp/purchasesdk/PayInfo;->setAppName(Ljava/lang/String;)V

    new-instance v1, Lmm/yp/purchasesdk/b/b;

    invoke-direct {v1}, Lmm/yp/purchasesdk/b/b;-><init>()V

    const-string v2, "provider"

    iput-object v2, v1, Lmm/yp/purchasesdk/b/b;->i:Ljava/lang/String;

    const-string v2, "\u63d0\u4f9b\u5546\uff1a"

    iput-object v2, v1, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmm/yp/purchasesdk/b/b;->mValue:Ljava/lang/String;

    iput v4, v1, Lmm/yp/purchasesdk/b/b;->d:I

    iget-object v2, v1, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmm/yp/purchasesdk/a/c;->c(Ljava/lang/String;)V

    iget-object v2, v1, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lmm/yp/purchasesdk/a/c;->a(Ljava/lang/String;Lmm/yp/purchasesdk/b/b;)V

    iget-object v1, v1, Lmm/yp/purchasesdk/b/b;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmm/yp/purchasesdk/PayInfo;->setProvider(Ljava/lang/String;)V

    new-instance v1, Lmm/yp/purchasesdk/b/b;

    invoke-direct {v1}, Lmm/yp/purchasesdk/b/b;-><init>()V

    const-string v2, "itemname"

    iput-object v2, v1, Lmm/yp/purchasesdk/b/b;->i:Ljava/lang/String;

    const-string v2, "\u5546\u54c1\uff1a"

    iput-object v2, v1, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmm/yp/purchasesdk/b/b;->mValue:Ljava/lang/String;

    iput v4, v1, Lmm/yp/purchasesdk/b/b;->d:I

    iget-object v2, v1, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmm/yp/purchasesdk/a/c;->c(Ljava/lang/String;)V

    iget-object v2, v1, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lmm/yp/purchasesdk/a/c;->a(Ljava/lang/String;Lmm/yp/purchasesdk/b/b;)V

    iget-object v1, v1, Lmm/yp/purchasesdk/b/b;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmm/yp/purchasesdk/PayInfo;->setProductName(Ljava/lang/String;)V

    new-instance v1, Lmm/yp/purchasesdk/b/b;

    invoke-direct {v1}, Lmm/yp/purchasesdk/b/b;-><init>()V

    const-string v2, "itemprice"

    iput-object v2, v1, Lmm/yp/purchasesdk/b/b;->i:Ljava/lang/String;

    const-string v2, "\u5355\u4ef7\uff1a"

    iput-object v2, v1, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    const-string v2, "0.1\u5143"

    iput-object v2, v1, Lmm/yp/purchasesdk/b/b;->mValue:Ljava/lang/String;

    iput v8, v1, Lmm/yp/purchasesdk/b/b;->d:I

    iget-object v2, v1, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmm/yp/purchasesdk/a/c;->c(Ljava/lang/String;)V

    iget-object v2, v1, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lmm/yp/purchasesdk/a/c;->a(Ljava/lang/String;Lmm/yp/purchasesdk/b/b;)V

    invoke-virtual {p0, v9}, Lmm/yp/purchasesdk/PayInfo;->setItemPrice(F)V

    new-instance v1, Lmm/yp/purchasesdk/b/b;

    invoke-direct {v1}, Lmm/yp/purchasesdk/b/b;-><init>()V

    const-string v2, "itemcount"

    iput-object v2, v1, Lmm/yp/purchasesdk/b/b;->i:Ljava/lang/String;

    const-string v2, "\u6570\u91cf\uff1a"

    iput-object v2, v1, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmm/yp/purchasesdk/b/b;->mValue:Ljava/lang/String;

    iput v8, v1, Lmm/yp/purchasesdk/b/b;->d:I

    iget-object v2, v1, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmm/yp/purchasesdk/a/c;->c(Ljava/lang/String;)V

    iget-object v2, v1, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lmm/yp/purchasesdk/a/c;->a(Ljava/lang/String;Lmm/yp/purchasesdk/b/b;)V

    new-instance v2, Ljava/lang/Integer;

    iget-object v1, v1, Lmm/yp/purchasesdk/b/b;->mValue:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lmm/yp/purchasesdk/PayInfo;->setProductCount(I)V

    new-instance v1, Lmm/yp/purchasesdk/b/b;

    invoke-direct {v1}, Lmm/yp/purchasesdk/b/b;-><init>()V

    const-string v2, "totalprice"

    iput-object v2, v1, Lmm/yp/purchasesdk/b/b;->i:Ljava/lang/String;

    const-string v2, "\u652f\u4ed8\u91d1\u989d:"

    iput-object v2, v1, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->d()I

    move-result v3

    int-to-double v4, v3

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5143"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmm/yp/purchasesdk/b/b;->mValue:Ljava/lang/String;

    iput v8, v1, Lmm/yp/purchasesdk/b/b;->d:I

    iget-object v2, v1, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmm/yp/purchasesdk/a/c;->c(Ljava/lang/String;)V

    iget-object v2, v1, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lmm/yp/purchasesdk/a/c;->a(Ljava/lang/String;Lmm/yp/purchasesdk/b/b;)V

    invoke-virtual {p0}, Lmm/yp/purchasesdk/PayInfo;->getProductCount()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    invoke-virtual {p0, v1}, Lmm/yp/purchasesdk/PayInfo;->setTotalPrice(F)V

    return-object v0
.end method

.method private static a(Lorg/w3c/dom/Element;Ljava/lang/String;I)Lmm/yp/purchasesdk/b/b;
    .registers 6

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_48

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :goto_19
    invoke-static {v0}, Lmm/yp/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmm/yp/purchasesdk/b/b;

    invoke-direct {v1}, Lmm/yp/purchasesdk/b/b;-><init>()V

    const-string v2, "Provider"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, "provider"

    iput-object v2, v1, Lmm/yp/purchasesdk/b/b;->i:Ljava/lang/String;

    const-string v2, "\u63d0\u4f9b\u5546:"

    iput-object v2, v1, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    iput-object v0, v1, Lmm/yp/purchasesdk/b/b;->mValue:Ljava/lang/String;

    :cond_34
    :goto_34
    return-object v1

    :cond_35
    const-string v2, "AppName"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const-string v2, "appname"

    iput-object v2, v1, Lmm/yp/purchasesdk/b/b;->i:Ljava/lang/String;

    const-string v2, "\u5e94\u7528\u540d\u79f0:"

    iput-object v2, v1, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    iput-object v0, v1, Lmm/yp/purchasesdk/b/b;->mValue:Ljava/lang/String;

    goto :goto_34

    :cond_48
    move-object v0, v1

    goto :goto_19
.end method

.method private static a(Lmm/yp/purchasesdk/a/c;F)V
    .registers 6

    const v3, -0x9a00

    new-instance v0, Lmm/yp/purchasesdk/b/b;

    invoke-direct {v0}, Lmm/yp/purchasesdk/b/b;-><init>()V

    const-string v1, "itemcount"

    iput-object v1, v0, Lmm/yp/purchasesdk/b/b;->i:Ljava/lang/String;

    const-string v1, "\u6570\u91cf\uff1a"

    iput-object v1, v0, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmm/yp/purchasesdk/b/b;->mValue:Ljava/lang/String;

    iput v3, v0, Lmm/yp/purchasesdk/b/b;->d:I

    iget-object v1, v0, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmm/yp/purchasesdk/a/c;->c(Ljava/lang/String;)V

    iget-object v1, v0, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lmm/yp/purchasesdk/a/c;->a(Ljava/lang/String;Lmm/yp/purchasesdk/b/b;)V

    new-instance v0, Lmm/yp/purchasesdk/b/b;

    invoke-direct {v0}, Lmm/yp/purchasesdk/b/b;-><init>()V

    const-string v1, "totalprice"

    iput-object v1, v0, Lmm/yp/purchasesdk/b/b;->i:Ljava/lang/String;

    const-string v1, "\u652f\u4ed8\u91d1\u989d:"

    iput-object v1, v0, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->d()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmm/yp/purchasesdk/b/b;->mValue:Ljava/lang/String;

    iput v3, v0, Lmm/yp/purchasesdk/b/b;->d:I

    iget-object v1, v0, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmm/yp/purchasesdk/a/c;->c(Ljava/lang/String;)V

    iget-object v1, v0, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lmm/yp/purchasesdk/a/c;->a(Ljava/lang/String;Lmm/yp/purchasesdk/b/b;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Lmm/yp/purchasesdk/PayInfo;)Lmm/yp/purchasesdk/a/c;
    .registers 16

    const/4 v3, 0x0

    const/high16 v12, -0x1000000

    const/high16 v11, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    sget-object v0, Lmm/yp/purchasesdk/b/a;->TAG:Ljava/lang/String;

    const-string v1, "enter parseProductInfo"

    invoke-static {v0, v1}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lmm/yp/purchasesdk/a/c;

    invoke-direct {v5}, Lmm/yp/purchasesdk/a/c;-><init>()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    const-string v0, "AppName"

    invoke-static {v6, v0, v2}, Lmm/yp/purchasesdk/b/a;->a(Lorg/w3c/dom/Element;Ljava/lang/String;I)Lmm/yp/purchasesdk/b/b;

    move-result-object v0

    const-string v1, "appname"

    invoke-virtual {v5, v1, v0}, Lmm/yp/purchasesdk/a/c;->a(Ljava/lang/String;Lmm/yp/purchasesdk/b/b;)V

    const-string v1, "appname"

    invoke-virtual {v5, v1}, Lmm/yp/purchasesdk/a/c;->c(Ljava/lang/String;)V

    iget-object v0, v0, Lmm/yp/purchasesdk/b/b;->mValue:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lmm/yp/purchasesdk/PayInfo;->setAppName(Ljava/lang/String;)V

    const-string v0, "Provider"

    invoke-static {v6, v0, v2}, Lmm/yp/purchasesdk/b/a;->a(Lorg/w3c/dom/Element;Ljava/lang/String;I)Lmm/yp/purchasesdk/b/b;

    move-result-object v0

    const-string v1, "provider"

    invoke-virtual {v5, v1, v0}, Lmm/yp/purchasesdk/a/c;->a(Ljava/lang/String;Lmm/yp/purchasesdk/b/b;)V

    const-string v1, "provider"

    invoke-virtual {v5, v1}, Lmm/yp/purchasesdk/a/c;->c(Ljava/lang/String;)V

    iget-object v0, v0, Lmm/yp/purchasesdk/b/b;->mValue:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lmm/yp/purchasesdk/PayInfo;->setProvider(Ljava/lang/String;)V

    const-string v0, "ProductInfo"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    const/4 v4, 0x0

    move v1, v2

    :goto_5d
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_283

    const-string v0, "paycode"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    if-eqz v8, :cond_28b

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :goto_7d
    invoke-static {v0}, Lmm/yp/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lmm/yp/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "paycode ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lmm/yp/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "apaycode ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27e

    const-string v0, "ProductInfo"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v1, "Item"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    sget-object v0, Lmm/yp/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nodes.getLength() = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    :goto_e6
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_279

    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v4, "id"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "name"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "value"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lmm/yp/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lmm/yp/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lmm/yp/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lmm/yp/purchasesdk/b/b;

    invoke-direct {v7}, Lmm/yp/purchasesdk/b/b;-><init>()V

    invoke-static {v4}, Lmm/yp/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lmm/yp/purchasesdk/b/b;->i:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lmm/yp/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ":"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    invoke-static {v0}, Lmm/yp/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lmm/yp/purchasesdk/b/b;->mValue:Ljava/lang/String;

    sget-object v0, Lmm/yp/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "info.mID = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v7, Lmm/yp/purchasesdk/b/b;->i:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lmm/yp/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "info.mKey = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v7, Lmm/yp/purchasesdk/b/b;->h:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lmm/yp/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "info.mValue = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v7, Lmm/yp/purchasesdk/b/b;->mValue:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lmm/yp/purchasesdk/b/b;->i:Ljava/lang/String;

    const-string v4, "itemprice"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_289

    iget-object v0, v7, Lmm/yp/purchasesdk/b/b;->mValue:Ljava/lang/String;

    const-string v1, "\u5206"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Integer;->floatValue()F

    move-result v4

    div-float/2addr v4, v11

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u5143"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lmm/yp/purchasesdk/b/b;->mValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->floatValue()F

    move-result v0

    div-float/2addr v0, v11

    invoke-virtual {v1}, Ljava/lang/Integer;->floatValue()F

    move-result v4

    invoke-virtual {p2, v4}, Lmm/yp/purchasesdk/PayInfo;->setItemPrice(F)V

    invoke-virtual {v1}, Ljava/lang/Integer;->floatValue()F

    move-result v1

    invoke-virtual {p2}, Lmm/yp/purchasesdk/PayInfo;->getProductCount()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    invoke-virtual {p2, v1}, Lmm/yp/purchasesdk/PayInfo;->setTotalPrice(F)V

    sget-object v1, Lmm/yp/purchasesdk/b/a;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Price = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v7, Lmm/yp/purchasesdk/b/b;->mValue:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_22c
    iget-object v1, v7, Lmm/yp/purchasesdk/b/b;->i:Ljava/lang/String;

    const-string v4, "totalprice"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_254

    iget-object v1, v7, Lmm/yp/purchasesdk/b/b;->i:Ljava/lang/String;

    const-string v4, "itemcount"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_254

    iget-object v1, v7, Lmm/yp/purchasesdk/b/b;->i:Ljava/lang/String;

    const-string v4, "itemprice"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_254

    iget-object v1, v7, Lmm/yp/purchasesdk/b/b;->i:Ljava/lang/String;

    const-string v4, "renttime"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_264

    :cond_254
    const v1, -0x9a00

    iput v1, v7, Lmm/yp/purchasesdk/b/b;->d:I

    :goto_259
    invoke-virtual {v5, v6}, Lmm/yp/purchasesdk/a/c;->c(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lmm/yp/purchasesdk/a/c;->a(Ljava/lang/String;Lmm/yp/purchasesdk/b/b;)V

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto/16 :goto_e6

    :cond_264
    iget-object v1, v7, Lmm/yp/purchasesdk/b/b;->i:Ljava/lang/String;

    const-string v4, "itemname"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_276

    iget-object v1, v7, Lmm/yp/purchasesdk/b/b;->mValue:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lmm/yp/purchasesdk/PayInfo;->setProductName(Ljava/lang/String;)V

    iput v12, v7, Lmm/yp/purchasesdk/b/b;->d:I

    goto :goto_259

    :cond_276
    iput v12, v7, Lmm/yp/purchasesdk/b/b;->d:I

    goto :goto_259

    :cond_279
    invoke-static {v5, v1}, Lmm/yp/purchasesdk/b/a;->a(Lmm/yp/purchasesdk/a/c;F)V

    move-object v3, v5

    :goto_27d
    return-object v3

    :cond_27e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_5d

    :cond_283
    const/16 v0, 0x4ba

    invoke-static {v0}, Lmm/yp/purchasesdk/PurchaseCode;->setStatusCode(I)V

    goto :goto_27d

    :cond_289
    move v0, v1

    goto :goto_22c

    :cond_28b
    move-object v0, v3

    goto/16 :goto_7d
.end method
