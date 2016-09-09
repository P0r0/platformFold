.class final Lcom/vivo/sdkplugin/activity/eN;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/eN;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eN;->a:Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;->b(Lcom/vivo/sdkplugin/activity/SubAccountEditActivity;I)V

    return-void
.end method
