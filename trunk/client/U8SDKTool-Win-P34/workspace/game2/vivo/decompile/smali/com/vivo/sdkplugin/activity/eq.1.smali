.class final Lcom/vivo/sdkplugin/activity/eq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/eq;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eq;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->f:Lcom/vivo/sdkplugin/TempNoticeDialog;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/TempNoticeDialog;->dismiss()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/eq;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->e(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
