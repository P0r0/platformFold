.class final Lcom/alipay/sdk/auth/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/net/d;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alipay/sdk/data/e;

.field final synthetic d:Lcom/alipay/sdk/auth/APAuthInfo;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/net/d;Landroid/app/Activity;Lcom/alipay/sdk/data/e;Lcom/alipay/sdk/auth/APAuthInfo;)V
    .registers 5

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alipay/sdk/auth/i;->a:Lcom/alipay/sdk/net/d;

    iput-object p2, p0, Lcom/alipay/sdk/auth/i;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/sdk/auth/i;->c:Lcom/alipay/sdk/data/e;

    iput-object p4, p0, Lcom/alipay/sdk/auth/i;->d:Lcom/alipay/sdk/auth/APAuthInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 121
    const/4 v1, 0x0

    .line 123
    :try_start_2
    iget-object v2, p0, Lcom/alipay/sdk/auth/i;->a:Lcom/alipay/sdk/net/d;

    iget-object v3, p0, Lcom/alipay/sdk/auth/i;->b:Landroid/app/Activity;

    iget-object v4, p0, Lcom/alipay/sdk/auth/i;->c:Lcom/alipay/sdk/data/e;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/alipay/sdk/net/d;->a(Landroid/content/Context;Lcom/alipay/sdk/data/e;Z)Lcom/alipay/sdk/protocol/c;
    :try_end_c
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_2 .. :try_end_c} :catch_10b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_ec
    .catchall {:try_start_2 .. :try_end_c} :catchall_fc

    move-result-object v1

    .line 125
    :goto_d
    :try_start_d
    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 128
    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/widget/a;->c()V

    .line 129
    invoke-static {}, Lcom/alipay/sdk/auth/h;->b()Lcom/alipay/sdk/widget/a;

    .line 132
    :cond_1d
    if-nez v1, :cond_52

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/sdk/auth/i;->d:Lcom/alipay/sdk/auth/APAuthInfo;

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

    .line 134
    iget-object v0, p0, Lcom/alipay/sdk/auth/i;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/auth/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/auth/h;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_44} :catch_ec
    .catchall {:try_start_d .. :try_end_44} :catchall_fc

    .line 166
    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 167
    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    .line 169
    :cond_51
    :goto_51
    return-void

    .line 138
    :cond_52
    :try_start_52
    iget-object v1, v1, Lcom/alipay/sdk/protocol/c;->c:Lorg/json/JSONObject;

    .line 139
    const-string v2, "form"

    .line 140
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "onload"

    .line 139
    invoke-static {v1, v2}, Lcom/alipay/sdk/protocol/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/sdk/protocol/b;

    move-result-object v1

    .line 142
    invoke-static {v1}, Lcom/alipay/sdk/protocol/a;->a(Lcom/alipay/sdk/protocol/b;)[Lcom/alipay/sdk/protocol/a;

    move-result-object v1

    .line 144
    array-length v2, v1

    :goto_65
    if-ge v0, v2, :cond_7b

    aget-object v3, v1, v0

    .line 145
    sget-object v4, Lcom/alipay/sdk/protocol/a;->a:Lcom/alipay/sdk/protocol/a;

    if-ne v3, v4, :cond_b8

    .line 147
    invoke-virtual {v3}, Lcom/alipay/sdk/protocol/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/alipay/sdk/util/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 148
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/alipay/sdk/auth/h;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    :cond_7b
    invoke-static {}, Lcom/alipay/sdk/auth/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/sdk/auth/i;->d:Lcom/alipay/sdk/auth/APAuthInfo;

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

    .line 155
    iget-object v0, p0, Lcom/alipay/sdk/auth/i;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/auth/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/auth/h;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_aa} :catch_ec
    .catchall {:try_start_52 .. :try_end_aa} :catchall_fc

    .line 166
    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 167
    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    goto :goto_51

    .line 144
    :cond_b8
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    .line 159
    :cond_bb
    :try_start_bb
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/sdk/auth/i;->b:Landroid/app/Activity;

    const-class v2, Lcom/alipay/sdk/auth/AuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    const-string v1, "params"

    invoke-static {}, Lcom/alipay/sdk/auth/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v1, "redirectUri"

    iget-object v2, p0, Lcom/alipay/sdk/auth/i;->d:Lcom/alipay/sdk/auth/APAuthInfo;

    .line 162
    invoke-virtual {v2}, Lcom/alipay/sdk/auth/APAuthInfo;->getRedirectUri()Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object v1, p0, Lcom/alipay/sdk/auth/i;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_dd} :catch_ec
    .catchall {:try_start_bb .. :try_end_dd} :catchall_fc

    .line 166
    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 167
    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    goto/16 :goto_51

    .line 164
    :catch_ec
    move-exception v0

    .line 166
    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 167
    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    goto/16 :goto_51

    .line 166
    :catchall_fc
    move-exception v0

    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v1

    if-eqz v1, :cond_10a

    .line 167
    invoke-static {}, Lcom/alipay/sdk/auth/h;->a()Lcom/alipay/sdk/widget/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/widget/a;->c()V

    :cond_10a
    throw v0

    :catch_10b
    move-exception v2

    goto/16 :goto_d
.end method
