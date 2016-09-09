.class final Lcom/vivo/sdkplugin/activity/ev;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/SubAccountActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/ev;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ev;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->setResult(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/ev;->a:Lcom/vivo/sdkplugin/activity/SubAccountActivity;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/activity/SubAccountActivity;->finish()V

    return-void
.end method
