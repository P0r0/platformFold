.class final Lcom/alipay/sdk/app/statistic/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alipay/sdk/app/statistic/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/sdk/app/statistic/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 29
    new-instance v0, Lcom/alipay/sdk/packet/impl/c;

    invoke-direct {v0}, Lcom/alipay/sdk/packet/impl/c;-><init>()V

    .line 33
    :try_start_5
    iget-object v1, p0, Lcom/alipay/sdk/app/statistic/b;->a:Landroid/content/Context;

    const-string v2, "alipay_cashier_statistic_record"

    invoke-static {v1, v2}, Lcom/alipay/sdk/util/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 36
    iget-object v2, p0, Lcom/alipay/sdk/app/statistic/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/sdk/packet/impl/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;

    move-result-object v1

    .line 37
    if-eqz v1, :cond_2e

    .line 38
    iget-object v1, p0, Lcom/alipay/sdk/app/statistic/b;->a:Landroid/content/Context;

    const-string v2, "alipay_cashier_statistic_record"
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1f} :catch_4b

    :try_start_1f
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_2e} :catch_4d

    .line 46
    :cond_2e
    :goto_2e
    :try_start_2e
    iget-object v1, p0, Lcom/alipay/sdk/app/statistic/b;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 47
    iget-object v1, p0, Lcom/alipay/sdk/app/statistic/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/sdk/app/statistic/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/packet/impl/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3d} :catch_3e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_3d} :catch_49

    .line 53
    :cond_3d
    :goto_3d
    return-void

    .line 50
    :catch_3e
    move-exception v0

    iget-object v0, p0, Lcom/alipay/sdk/app/statistic/b;->a:Landroid/content/Context;

    const-string v1, "alipay_cashier_statistic_record"

    iget-object v2, p0, Lcom/alipay/sdk/app/statistic/b;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/sdk/util/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    .line 53
    :catch_49
    move-exception v0

    goto :goto_3d

    .line 41
    :catch_4b
    move-exception v1

    goto :goto_2e

    :catch_4d
    move-exception v1

    goto :goto_2e
.end method
