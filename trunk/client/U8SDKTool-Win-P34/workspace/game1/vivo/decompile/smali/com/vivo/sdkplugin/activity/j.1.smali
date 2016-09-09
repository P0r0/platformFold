.class final Lcom/vivo/sdkplugin/activity/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/j;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    const-string v0, "-----hide---onAnimationEnd----------"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 3

    const-string v0, "-----hide---onAnimationRepeat----------"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    const-string v0, "-----hide---onAnimationStart----------"

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/j;->a:Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;

    # invokes: Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->resetWebviewMarginTop()V
    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;->access$14(Lcom/vivo/sdkplugin/activity/AccountAssistWebViewActivity;)V

    return-void
.end method
