.class final Lcom/vivo/sdkplugin/activity/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

.field private final synthetic b:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;Landroid/widget/EditText;)V
    .registers 3

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/m;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iput-object p2, p0, Lcom/vivo/sdkplugin/activity/m;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/m;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    iget-object v1, p0, Lcom/vivo/sdkplugin/activity/m;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->d(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/m;->a:Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;->d(Lcom/vivo/sdkplugin/activity/AccountPersonalCenterActivity;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
