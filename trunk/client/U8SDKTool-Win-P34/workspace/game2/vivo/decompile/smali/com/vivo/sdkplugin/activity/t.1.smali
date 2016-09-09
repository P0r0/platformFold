.class final Lcom/vivo/sdkplugin/activity/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/t;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iput p2, p0, Lcom/vivo/sdkplugin/activity/t;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x4

    if-ne p2, v0, :cond_f

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/t;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget v1, p0, Lcom/vivo/sdkplugin/activity/t;->b:I

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->e(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
