.class final Lcom/vivo/sdkplugin/activity/bu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/bu;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const/16 v2, 0x9

    const/16 v1, 0x10

    packed-switch p2, :pswitch_data_54

    :goto_7
    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bu;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->d(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bu;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->d(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bu;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->c(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    goto :goto_7

    :cond_1e
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bu;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->b(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bu;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0, v2}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->c(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    goto :goto_7

    :cond_2c
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bu;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->c(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    goto :goto_7

    :pswitch_32
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bu;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->b(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bu;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->d(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bu;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0, v2}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->c(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    goto :goto_7

    :cond_48
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bu;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->c(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    goto :goto_7

    :pswitch_4e
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/bu;->a:Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;->c(Lcom/vivo/sdkplugin/activity/FindPasswordActivity;I)V

    goto :goto_7

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_8
        :pswitch_32
        :pswitch_4e
    .end packed-switch
.end method
