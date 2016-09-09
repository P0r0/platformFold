.class public Lmm/yp/purchasesdk/c;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lmm/yp/purchasesdk/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmm/yp/purchasesdk/c;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lmm/yp/purchasesdk/c;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .registers 6

    const/16 v0, 0x4b0

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmm/yp/purchasesdk/e/e;->m(Ljava/lang/String;)V

    invoke-static {}, Lmm/yp/purchasesdk/e/b;->b()Z

    move-result v2

    invoke-static {v2}, Lmm/yp/purchasesdk/e/c;->b(Z)V

    invoke-static {p0}, Lmm/yp/purchasesdk/e/f;->a(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lmm/yp/purchasesdk/e/c;->c(Ljava/lang/Boolean;)V

    invoke-static {}, Lmm/yp/purchasesdk/fingerprint/a;->init()V

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->b()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2d

    const/16 v0, 0x451

    :goto_2c
    return v0

    :cond_2d
    invoke-static {}, Lmm/yp/purchasesdk/d/a;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3e

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/yp/purchasesdk/e/c;->b(Ljava/lang/Boolean;)V

    :goto_3a
    sput-boolean v4, Lmm/yp/purchasesdk/c;->a:Z

    move v0, v1

    goto :goto_2c

    :cond_3e
    invoke-static {v2}, Lmm/yp/purchasesdk/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4e

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_59

    :cond_4e
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmm/yp/purchasesdk/e/c;->b(Ljava/lang/Boolean;)V

    sput-boolean v4, Lmm/yp/purchasesdk/c;->a:Z

    move v0, v1

    goto :goto_2c

    :cond_59
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lmm/yp/purchasesdk/e/c;->b(Ljava/lang/Boolean;)V

    :try_start_60
    invoke-static {v2}, Lmm/yp/purchasesdk/c;->a(Ljava/lang/String;)I
    :try_end_63
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_60 .. :try_end_63} :catch_64
    .catch Lorg/xml/sax/SAXException; {:try_start_60 .. :try_end_63} :catch_70
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_7c

    goto :goto_3a

    :catch_64
    move-exception v1

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    sget-object v2, Lmm/yp/purchasesdk/c;->TAG:Ljava/lang/String;

    const-string v3, "failed to read mmpay.xml.ParserConfigurationException "

    invoke-static {v2, v3, v1}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2c

    :catch_70
    move-exception v1

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    sget-object v2, Lmm/yp/purchasesdk/c;->TAG:Ljava/lang/String;

    const-string v3, "failed to read mmpay.xml.SAXException "

    invoke-static {v2, v3, v1}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2c

    :catch_7c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    sget-object v2, Lmm/yp/purchasesdk/c;->TAG:Ljava/lang/String;

    const-string v3, "failed to read mmpay.xml.io excetion "

    invoke-static {v2, v3, v1}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2c
.end method

.method public static a(Ljava/lang/String;)I
    .registers 13

    const/4 v2, 0x0

    sget-object v0, Lmm/yp/purchasesdk/c;->TAG:Ljava/lang/String;

    const-string v1, "enter parsetInfo"

    invoke-static {v0, v1}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lmm/yp/purchasesdk/a/c;

    invoke-direct {v0}, Lmm/yp/purchasesdk/a/c;-><init>()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v0, "ProgramId"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_2a0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :goto_41
    sget-object v1, Lmm/yp/purchasesdk/c;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aProgramId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lmm/yp/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/yp/purchasesdk/e/c;->g(Ljava/lang/String;)V

    sget-object v1, Lmm/yp/purchasesdk/c;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aProgramId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ChannelCode"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_b1

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/yp/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/yp/purchasesdk/e/c;->h(Ljava/lang/String;)V

    sget-object v1, Lmm/yp/purchasesdk/c;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aChannelcode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b1
    const-string v0, "APPID"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_ea

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/yp/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/yp/purchasesdk/e/c;->f(Ljava/lang/String;)V

    sget-object v1, Lmm/yp/purchasesdk/c;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aAPPID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ea
    const-string v0, "aliasName"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move v1, v2

    move-object v3, v0

    :goto_f7
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_1b9

    const-string v0, "aliasName"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v4, "alias"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    sget-object v0, Lmm/yp/purchasesdk/c;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nodes.getLength() = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    :goto_12c
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v4, v0, :cond_1af

    invoke-interface {v7, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v8, "name"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "paycode"

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Lmm/yp/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lmm/yp/purchasesdk/c;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lmm/yp/purchasesdk/c;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Global.getPaycode() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->l()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->l()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b4

    invoke-static {v0}, Lmm/yp/purchasesdk/fingerprint/IdentifyApp;->decryptPapaya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmm/yp/purchasesdk/e/c;->k(Ljava/lang/String;)V

    sget-object v3, Lmm/yp/purchasesdk/c;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aliaspaycode = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_1af
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_f7

    :cond_1b4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_12c

    :cond_1b9
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c2

    const/16 v2, 0x4ba

    :cond_1c1
    return v2

    :cond_1c2
    const-string v0, "aliasChannel"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    move v1, v2

    :goto_1c9
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_1c1

    const-string v0, "aliasChannel"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v3, "alias"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    sget-object v0, Lmm/yp/purchasesdk/c;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nodes.getLength() = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    :goto_1fe
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v3, v0, :cond_29b

    invoke-interface {v6, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v7, "name"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "putchannel"

    invoke-interface {v0, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lmm/yp/purchasesdk/c;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lmm/yp/purchasesdk/c;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "putchannel = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lmm/yp/purchasesdk/c;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Global.getPutChannel() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28d

    :try_start_272
    invoke-static {v0}, Lmm/yp/purchasesdk/e/c;->l(Ljava/lang/String;)V
    :try_end_275
    .catch Ljava/lang/Exception; {:try_start_272 .. :try_end_275} :catch_292

    :goto_275
    sget-object v7, Lmm/yp/purchasesdk/c;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "aliasputchannel = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1fe

    :catch_292
    move-exception v7

    sget-object v8, Lmm/yp/purchasesdk/c;->TAG:Ljava/lang/String;

    const-string v9, "PutChannel Error! you must input 0-1295 numbers"

    invoke-static {v8, v9, v7}, Lmm/yp/purchasesdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_275

    :cond_29b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1c9

    :cond_2a0
    move-object v0, v1

    goto/16 :goto_41
.end method

.method public static a(Landroid/os/Handler;Landroid/os/Handler;Lmm/yp/purchasesdk/b;I)V
    .registers 8

    const/16 v3, 0x3e9

    invoke-static {}, Lmm/yp/purchasesdk/c/a;->b()V

    invoke-static {}, Lmm/yp/purchasesdk/c/a;->c()V

    if-ne v3, p3, :cond_27

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Paycode"

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TradeID"

    invoke-static {}, Lmm/yp/purchasesdk/e/c;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p3, v3, :cond_26

    invoke-virtual {p2, p3, v0}, Lmm/yp/purchasesdk/b;->onBillingFinish(ILjava/util/HashMap;)V

    :cond_26
    :goto_26
    return-void

    :cond_27
    invoke-static {}, Lmm/yp/purchasesdk/d;->a()Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_32
    const-string v0, "PurchaseInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " order fail ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/yp/purchasesdk/e/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lmm/yp/purchasesdk/b;->onBillingFinish(ILjava/util/HashMap;)V

    goto :goto_26
.end method
