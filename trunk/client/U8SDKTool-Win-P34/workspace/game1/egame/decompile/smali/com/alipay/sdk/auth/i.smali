.class final Lcom/alipay/sdk/auth/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/StringBuilder;

.field final synthetic c:Lcom/alipay/sdk/auth/APAuthInfo;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/StringBuilder;Lcom/alipay/sdk/auth/APAuthInfo;)V
    .registers 4

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alipay/sdk/auth/i;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/alipay/sdk/auth/i;->b:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/alipay/sdk/auth/i;->c:Lcom/alipay/sdk/auth/APAuthInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 107
    :try_start_1
    new-instance v2, Lcom/alipay/sdk/packet/impl/a;

    invoke-direct {v2}, Lcom/alipay/sdk/packet/impl/a;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_ff
    .catchall {:try_start_1 .. :try_end_6} :catchall_10f

    .line 108
    const/4 v1, 0x0

    .line 110
    :try_start_7
    iget-object v3, p0, Lcom/alipay/sdk/auth/i;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/alipay/sdk/auth/i;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/sdk/packet/impl/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_12} :catch_11e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_ff
    .catchall {:try_start_7 .. :try_end_12} :catchall_10f

    move-result-object v1

    .line 112
    :goto_13
    :try_start_13
    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 115
    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/widget/a;->b()V

    .line 116
    invoke-static {}, Lcom/alipay/sdk/auth/h;->b()Lcom/alipay/sdk/widget/a;

    .line 119
    :cond_23
    if-nez v1, :cond_58

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/sdk/auth/i;->c:Lcom/alipay/sdk/auth/APAuthInfo;

    invoke-virtual {v1}, Lcom/alipay/sdk/auth/APAuthInfo;->getRedirectUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?resultCode=202"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/auth/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/alipay/sdk/auth/i;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/auth/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/auth/h;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_4a} :catch_ff
    .catchall {:try_start_13 .. :try_end_4a} :catchall_10f

    .line 150
    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 151
    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->b()V

    .line 153
    :cond_57
    :goto_57
    return-void

    .line 125
    :cond_58
    :try_start_58
    invoke-virtual {v1}, Lcom/alipay/sdk/packet/b;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 127
    const-string v2, "form"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 128
    const-string v2, "onload"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 129
    invoke-static {v1}, Lcom/alipay/sdk/protocol/b;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    move v1, v0

    .line 131
    :goto_6d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8d

    .line 132
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/protocol/b;

    iget-object v0, v0, Lcom/alipay/sdk/protocol/b;->a:Lcom/alipay/sdk/protocol/a;

    sget-object v3, Lcom/alipay/sdk/protocol/a;->b:Lcom/alipay/sdk/protocol/a;

    if-ne v0, v3, :cond_ca

    .line 133
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/protocol/b;

    iget-object v0, v0, Lcom/alipay/sdk/protocol/b;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/alipay/sdk/auth/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    :cond_8d
    invoke-static {}, Lcom/alipay/sdk/auth/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/sdk/auth/i;->c:Lcom/alipay/sdk/auth/APAuthInfo;

    invoke-virtual {v1}, Lcom/alipay/sdk/auth/APAuthInfo;->getRedirectUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?resultCode=202"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/auth/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/alipay/sdk/auth/i;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/auth/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/auth/h;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_bc} :catch_ff
    .catchall {:try_start_58 .. :try_end_bc} :catchall_10f

    .line 150
    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 151
    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->b()V

    goto :goto_57

    .line 131
    :cond_ca
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6d

    .line 144
    :cond_ce
    :try_start_ce
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/sdk/auth/i;->a:Landroid/app/Activity;

    const-class v2, Lcom/alipay/sdk/auth/AuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    const-string v1, "params"

    invoke-static {}, Lcom/alipay/sdk/auth/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v1, "redirectUri"

    iget-object v2, p0, Lcom/alipay/sdk/auth/i;->c:Lcom/alipay/sdk/auth/APAuthInfo;

    invoke-virtual {v2}, Lcom/alipay/sdk/auth/APAuthInfo;->getRedirectUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcom/alipay/sdk/auth/i;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_f0} :catch_ff
    .catchall {:try_start_ce .. :try_end_f0} :catchall_10f

    .line 150
    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 151
    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->b()V

    goto/16 :goto_57

    .line 148
    :catch_ff
    move-exception v0

    .line 150
    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 151
    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->b()V

    goto/16 :goto_57

    .line 150
    :catchall_10f
    move-exception v0

    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v1

    if-eqz v1, :cond_11d

    .line 151
    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/widget/a;->b()V

    :cond_11d
    throw v0

    :catch_11e
    move-exception v2

    goto/16 :goto_13
.end method
