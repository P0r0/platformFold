.class public final Lcom/baidu/paysdk/storage/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-static {p0}, Lcom/baidu/paysdk/storage/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_a
    return-void

    :cond_b
    const-string v1, "_pay.preferences"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "time"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0, p1}, Lcom/baidu/wallet/core/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 5

    invoke-static {p0}, Lcom/baidu/paysdk/storage/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_a
    return-void

    :cond_b
    const-string v1, "_pay.preferences"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lcom/baidu/wallet/core/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/baidu/paysdk/storage/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    :goto_b
    return v0

    :cond_c
    const-string v2, "_pay.preferences"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v2, v1, v0}, Lcom/baidu/wallet/core/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/baidu/paysdk/storage/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, ""

    :goto_c
    return-object v0

    :cond_d
    const-string v1, "_pay.preferences"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "time"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {p0, v1, v0, v2}, Lcom/baidu/wallet/core/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_c
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginData()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_20

    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/Md5Utils;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    return-object v0

    :cond_1e
    move-object v0, v1

    goto :goto_1d

    :cond_20
    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginData()Ljava/util/Map;

    move-result-object v0

    const-string v2, "pass_uid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/Md5Utils;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_3b
    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginData()Ljava/util/Map;

    move-result-object v0

    const-string v2, "pass_user_name"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_56

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/Md5Utils;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_56
    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginData()Ljava/util/Map;

    move-result-object v0

    const-string v2, "pass_bduss"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_71

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/Md5Utils;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_71
    invoke-static {}, Lcom/baidu/wallet/api/BaiduWallet;->getInstance()Lcom/baidu/wallet/api/BaiduWallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/api/BaiduWallet;->getLoginToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_84

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/Md5Utils;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_84
    move-object v0, v1

    goto :goto_1d
.end method
