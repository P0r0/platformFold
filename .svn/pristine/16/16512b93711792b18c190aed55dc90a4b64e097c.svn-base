.class final Lcom/baidu/bdgame/sdk/obf/ek$3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ek;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ek;)V
    .registers 2

    .prologue
    .line 119
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ek$3;->a:Lcom/baidu/bdgame/sdk/obf/ek;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 122
    :try_start_1
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ek$3;->a:Lcom/baidu/bdgame/sdk/obf/ek;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ek;->d(Lcom/baidu/bdgame/sdk/obf/ek;)Lcom/baidu/bdgame/sdk/obf/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/es;->b()V

    .line 123
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 125
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_110

    .line 182
    :goto_13
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_77

    .line 186
    :goto_16
    return-void

    .line 129
    :sswitch_17
    :try_start_17
    const-string v2, "Alipay trade message"

    invoke-static {v2, v0}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v2, "resultStatus={"

    .line 131
    const-string v3, "resultStatus="

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 132
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    .line 133
    const-string v3, "};memo="

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 134
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 135
    const-string v3, "Alipay trade status"

    invoke-static {v3, v2}, Lcom/baidu/bdgame/sdk/obf/lz;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v3, "9000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 137
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ek$3;->a:Lcom/baidu/bdgame/sdk/obf/ek;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ek;->d(Lcom/baidu/bdgame/sdk/obf/ek;)Lcom/baidu/bdgame/sdk/obf/es;

    move-result-object v0

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kk;->a:Lcom/baidu/bdgame/sdk/obf/kk;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ek$3;->a:Lcom/baidu/bdgame/sdk/obf/ek;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ek;->a(Lcom/baidu/bdgame/sdk/obf/ek;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ek$3;->a:Lcom/baidu/bdgame/sdk/obf/ek;

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/ek;->a(Lcom/baidu/bdgame/sdk/obf/ek;)Landroid/app/Activity;

    move-result-object v3

    const-string v4, "bdp_passport_pay"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/es;->b(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/Object;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_65} :catch_66

    goto :goto_13

    .line 171
    :catch_66
    move-exception v0

    .line 172
    :try_start_67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ek$3;->a:Lcom/baidu/bdgame/sdk/obf/ek;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ek;->d(Lcom/baidu/bdgame/sdk/obf/ek;)Lcom/baidu/bdgame/sdk/obf/es;

    move-result-object v0

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kk;->c:Lcom/baidu/bdgame/sdk/obf/kk;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/es;->b(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/Object;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_76} :catch_77

    goto :goto_13

    .line 183
    :catch_77
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16

    .line 138
    :cond_7c
    :try_start_7c
    const-string v3, "8000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 139
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ek$3;->a:Lcom/baidu/bdgame/sdk/obf/ek;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ek;->d(Lcom/baidu/bdgame/sdk/obf/ek;)Lcom/baidu/bdgame/sdk/obf/es;

    move-result-object v0

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kk;->c:Lcom/baidu/bdgame/sdk/obf/kk;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ek$3;->a:Lcom/baidu/bdgame/sdk/obf/ek;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/ek;->a(Lcom/baidu/bdgame/sdk/obf/ek;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ek$3;->a:Lcom/baidu/bdgame/sdk/obf/ek;

    invoke-static {v3}, Lcom/baidu/bdgame/sdk/obf/ek;->a(Lcom/baidu/bdgame/sdk/obf/ek;)Landroid/app/Activity;

    move-result-object v3

    const-string v4, "bdp_passport_pay_submit"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/es;->b(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 140
    :cond_ab
    const-string v3, "6001"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_b0} :catch_66

    move-result v2

    if-eqz v2, :cond_d8

    .line 144
    :try_start_b3
    const-string v2, "memo="

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 145
    const-string v3, "{"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 147
    const-string v3, "}"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 149
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_ca} :catch_10e

    move-result-object v1

    .line 154
    :goto_cb
    :try_start_cb
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ek$3;->a:Lcom/baidu/bdgame/sdk/obf/ek;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ek;->d(Lcom/baidu/bdgame/sdk/obf/ek;)Lcom/baidu/bdgame/sdk/obf/es;

    move-result-object v0

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kk;->d:Lcom/baidu/bdgame/sdk/obf/kk;

    invoke-virtual {v0, v2, v1}, Lcom/baidu/bdgame/sdk/obf/es;->b(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/Object;)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_d6} :catch_66

    goto/16 :goto_13

    .line 159
    :cond_d8
    :try_start_d8
    const-string v2, "memo="

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 160
    const-string v3, "{"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 162
    const-string v3, "}"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 164
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_ef} :catch_fd

    move-result-object v0

    .line 168
    :goto_f0
    :try_start_f0
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ek$3;->a:Lcom/baidu/bdgame/sdk/obf/ek;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ek;->d(Lcom/baidu/bdgame/sdk/obf/ek;)Lcom/baidu/bdgame/sdk/obf/es;

    move-result-object v1

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/es;->b(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/Object;)V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_fb} :catch_66

    goto/16 :goto_13

    .line 166
    :catch_fd
    move-exception v0

    move-object v0, v1

    goto :goto_f0

    .line 178
    :sswitch_100
    :try_start_100
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ek$3;->a:Lcom/baidu/bdgame/sdk/obf/ek;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ek;->d(Lcom/baidu/bdgame/sdk/obf/ek;)Lcom/baidu/bdgame/sdk/obf/es;

    move-result-object v0

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/es;->b(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/Object;)V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_10c} :catch_77

    goto/16 :goto_13

    .line 151
    :catch_10e
    move-exception v0

    goto :goto_cb

    .line 125
    :sswitch_data_110
    .sparse-switch
        0x1 -> :sswitch_17
        0x5 -> :sswitch_100
    .end sparse-switch
.end method
