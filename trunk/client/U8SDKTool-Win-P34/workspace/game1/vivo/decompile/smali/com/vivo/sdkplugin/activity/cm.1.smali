.class final Lcom/vivo/sdkplugin/activity/cm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cm;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cm;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    const-class v2, Lcom/vivo/sdkplugin/activity/FindPasswordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/cm;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/vivo/sdkplugin/activity/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
