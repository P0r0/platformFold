.class final Lcom/vivo/sdkplugin/activity/co;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/co;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/co;->a:Lcom/vivo/sdkplugin/activity/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/LoginActivity;->c(Lcom/vivo/sdkplugin/activity/LoginActivity;Z)V

    return-void
.end method
