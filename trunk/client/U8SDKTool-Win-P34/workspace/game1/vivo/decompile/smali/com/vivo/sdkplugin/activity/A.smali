.class final Lcom/vivo/sdkplugin/activity/A;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/A;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/A;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vivo/sdkplugin/activity/A;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget-object v2, v2, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->a:Landroid/content/Context;

    const-class v3, Lcom/bbk/payment/dealRecord/VivoDealRecordActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
