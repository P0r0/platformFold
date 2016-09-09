.class final Lcom/vivo/sdkplugin/activity/cQ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vivo/sdkplugin/TempNoticeDialog$PositiveClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cQ;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cQ;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->setResult(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cQ;->a:Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/PhoneRegisterCommitActivity;->finish()V

    return-void
.end method
