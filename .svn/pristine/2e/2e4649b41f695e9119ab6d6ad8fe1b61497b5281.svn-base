.class public Lcom/baidu/paysdk/ui/PassNormalizeActivity;
.super Lcom/baidu/wallet/core/beans/BeanActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/paysdk/ui/PassNormalizeActivity$1;,
        Lcom/baidu/paysdk/ui/PassNormalizeActivity$a;,
        Lcom/baidu/paysdk/ui/PassNormalizeActivity$JavascriptInterfaceImpl;
    }
.end annotation


# instance fields
.field a:Landroid/webkit/WebView;

.field b:Ljava/lang/String;

.field c:I

.field private d:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->c:I

    return-void
.end method

.method static synthetic a(Lcom/baidu/paysdk/ui/PassNormalizeActivity;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->d:Landroid/app/Activity;

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    return-object v0

    :cond_d
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_11
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method static synthetic a(Lcom/baidu/paysdk/ui/PassNormalizeActivity;Ljava/lang/String;)Ljava/util/Map;
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/util/Map;
    .registers 8

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "html="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    const-string v1, "<client>([\\S\\s]*?)</client>"

    invoke-static {v1, p1}, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_23
    :goto_23
    return-object v0

    :cond_24
    :try_start_24
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v1, "UTF-8"

    invoke-interface {v2, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_39} :catch_5d

    move-result v1

    :goto_3a
    const/4 v3, 0x1

    if-eq v1, v3, :cond_23

    packed-switch v1, :pswitch_data_1ec

    :cond_40
    move-object v1, v0

    :goto_41
    :try_start_41
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_1e5

    move-result v0

    move v5, v0

    move-object v0, v1

    move v1, v5

    goto :goto_3a

    :pswitch_49
    :try_start_49
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "data"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_62

    if-nez v0, :cond_40

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5c} :catch_5d

    goto :goto_41

    :catch_5d
    move-exception v1

    :goto_5e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23

    :cond_62
    if-nez v0, :cond_97

    :try_start_64
    const-string v3, "error_code"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_97

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_71} :catch_5d

    :try_start_71
    const-string v0, "pass_error_code"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_91} :catch_92

    goto :goto_41

    :catch_92
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_5e

    :cond_97
    if-nez v0, :cond_b5

    :try_start_99
    const-string v3, "error_description"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a6} :catch_5d

    :try_start_a6
    const-string v0, "pass_error_code"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_af} :catch_b0

    goto :goto_41

    :catch_b0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_5e

    :cond_b5
    if-eqz v0, :cond_40

    :try_start_b7
    const-string v3, "errno"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e2

    const-string v1, "pass_error_code"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto/16 :goto_41

    :cond_e2
    const-string v3, "uname"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f6

    const-string v1, "pass_error_code"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto/16 :goto_41

    :cond_f6
    const-string v3, "errmsg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10a

    const-string v1, "pass_error_msg"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto/16 :goto_41

    :cond_10a
    const-string v3, "bduss"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11e

    const-string v1, "pass_bduss"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto/16 :goto_41

    :cond_11e
    const-string v3, "ptoken"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_132

    const-string v1, "pass_ptoken"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto/16 :goto_41

    :cond_132
    const-string v3, "stoken"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_146

    const-string v1, "pass_stoken"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto/16 :goto_41

    :cond_146
    const-string v3, "displayname"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15a

    const-string v1, "pass_display_name"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto/16 :goto_41

    :cond_15a
    const-string v3, "uid"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16e

    const-string v1, "pass_uid"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto/16 :goto_41

    :cond_16e
    const-string v3, "authsid"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_192

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pass_sid"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "pass_sid"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18f

    const-string v1, "0"

    :goto_189
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto/16 :goto_41

    :cond_18f
    const-string v1, "1"

    goto :goto_189

    :cond_192
    const-string v3, "account"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a6

    const-string v1, "pass_account"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto/16 :goto_41

    :cond_1a6
    const-string v3, "accounttype"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1ba

    const-string v1, "pass_account_type"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto/16 :goto_41

    :cond_1ba
    const-string v3, "password"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1ce

    const-string v1, "pass_code"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto/16 :goto_41

    :cond_1ce
    const-string v3, "ubi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    const-string v1, "pass_ubi"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1df
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_1df} :catch_5d

    move-object v1, v0

    goto/16 :goto_41

    :pswitch_1e2
    move-object v1, v0

    goto/16 :goto_41

    :catch_1e5
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_5e

    nop

    :pswitch_data_1ec
    .packed-switch 0x2
        :pswitch_49
        :pswitch_1e2
    .end packed-switch
.end method

.method public static webLogin(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_a
    move v0, v1

    :goto_b
    return v0

    :cond_c
    :try_start_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BDUSS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";domain=baidu.com;path=/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    const-string v4, "http://www.baidu.com"

    invoke-virtual {v3, v4, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3c} :catch_3d

    goto :goto_b

    :catch_3d
    move-exception v0

    move v0, v1

    goto :goto_b
.end method


# virtual methods
.method public handleResponse(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onBackPressed()V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_d
    return-void

    :cond_e
    iget v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->d:Landroid/app/Activity;

    const-string v1, "normalizeComplete"

    const-string v2, "cancel"

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->d:Landroid/app/Activity;

    iget v1, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->c:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/core/utils/PassUtil;->backNormalized(Landroid/content/Context;ILjava/util/Map;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->finish()V

    goto :goto_d

    :cond_28
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->d:Landroid/app/Activity;

    const-string v1, "normalizeVerify"

    const-string v2, "cancel"

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/baidu/wallet/core/beans/BeanActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->d:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->setFlagPaySdk()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->d:Landroid/app/Activity;

    const-string v1, "ebpay_layout_webview"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_47

    const-string v1, "normalize_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->b:Ljava/lang/String;

    const-string v1, "pass_util_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->c:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intent url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type111="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->c:I

    if-ne v0, v4, :cond_95

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->d:Landroid/app/Activity;

    const-string v1, "normalizeComplete"

    const-string v2, "open"

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ebpay_complete_pass"

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->initActionBar(Ljava/lang/String;)V

    :goto_71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->finish()V

    :goto_94
    return-void

    :cond_95
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->d:Landroid/app/Activity;

    const-string v1, "normalizeVerify"

    const-string v2, "open"

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ebpay_verify_pass"

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->initActionBar(Ljava/lang/String;)V

    goto :goto_71

    :cond_a4
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->d:Landroid/app/Activity;

    const-string v1, "cust_webview"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->resumeTimers()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_de

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->a:Landroid/webkit/WebView;

    const-string v2, "searchBoxJavaBridge_"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_de
    iget-object v1, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/baidu/paysdk/ui/PassNormalizeActivity$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/baidu/paysdk/ui/PassNormalizeActivity$a;-><init>(Lcom/baidu/paysdk/ui/PassNormalizeActivity;Lcom/baidu/paysdk/ui/PassNormalizeActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getMinimumFontSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v1

    const-string v0, ""

    invoke-virtual {v1}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getTokenType()I

    move-result v2

    if-nez v2, :cond_127

    invoke-virtual {v1}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    :cond_10d
    :goto_10d
    iget-object v1, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/baidu/paysdk/ui/PassNormalizeActivity$JavascriptInterfaceImpl;

    invoke-direct {v2, p0}, Lcom/baidu/paysdk/ui/PassNormalizeActivity$JavascriptInterfaceImpl;-><init>(Lcom/baidu/paysdk/ui/PassNormalizeActivity;)V

    const-string v3, "sapi_obj"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->d:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->webLogin(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_94

    :cond_127
    invoke-virtual {v1}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getTokenType()I

    move-result v2

    if-ne v2, v4, :cond_10d

    invoke-virtual {v1}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_10d
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->onPause()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_14

    invoke-static {}, Lcom/baidu/wallet/core/utils/NFCUtil;->getInstance()Lcom/baidu/wallet/core/utils/NFCUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/utils/NFCUtil;->disableForegroundDispatch(Landroid/app/Activity;)V

    :cond_14
    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/baidu/wallet/core/beans/BeanActivity;->onResume()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_14

    invoke-static {}, Lcom/baidu/wallet/core/utils/NFCUtil;->getInstance()Lcom/baidu/wallet/core/utils/NFCUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/paysdk/ui/PassNormalizeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/utils/NFCUtil;->enableForegroundDispatch(Landroid/app/Activity;)V

    :cond_14
    return-void
.end method
