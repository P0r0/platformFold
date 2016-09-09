.class final Lcom/vivo/sdkplugin/activity/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

.field private final synthetic b:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;Landroid/widget/EditText;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/u;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iput-object p2, p0, Lcom/vivo/sdkplugin/activity/u;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/u;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/u;->b:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
