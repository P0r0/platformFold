.class final Lcom/vivo/sdkplugin/activity/fz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/fz;->a:Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/fz;->a:Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/VivoBaseActvitiy;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 v0, 0x1

    return v0
.end method
