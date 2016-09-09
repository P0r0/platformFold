.class final Lcom/vivo/sdkplugin/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/PopupMenu;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/PopupMenu;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/m;->a:Lcom/vivo/sdkplugin/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/vivo/sdkplugin/m;->a:Lcom/vivo/sdkplugin/PopupMenu;

    invoke-static {v0}, Lcom/vivo/sdkplugin/PopupMenu;->d(Lcom/vivo/sdkplugin/PopupMenu;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
