.class final Lcom/vivo/sdkplugin/activity/cd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cd;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cd;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->e:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cd;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->e:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->dismiss()V

    :cond_d
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cd;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    invoke-static {v0}, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->a(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/net/NetworkUtilities;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cd;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->b:Landroid/widget/TextView;

    const-string v1, "\u65e0\u6cd5\u8fde\u63a5\u7f51\u7edc\uff0c\u8bf7\u70b9\u51fb\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cd;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cd;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cd;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->b:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_3a
    return-void
.end method
