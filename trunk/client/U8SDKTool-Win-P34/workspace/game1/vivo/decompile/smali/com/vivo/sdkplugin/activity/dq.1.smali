.class final Lcom/vivo/sdkplugin/activity/dq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/dq;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dq;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    iget-object v1, v1, Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;->a:Landroid/content/Context;

    const-class v2, Lcom/vivo/sdkplugin/activity/RegisterProtocolActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/dq;->a:Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/activity/RegisterEmailActiviy;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
