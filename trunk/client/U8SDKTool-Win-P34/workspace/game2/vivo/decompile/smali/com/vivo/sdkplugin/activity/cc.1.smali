.class final Lcom/vivo/sdkplugin/activity/cc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/activity/cc;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cc;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->e:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cc;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->e:Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/VivoProgressDialog;->dismiss()V

    :cond_e
    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cc;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cc;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->b:Landroid/widget/TextView;

    const-string v1, "\u65e0\u653b\u7565\u6570\u636e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/activity/cc;->a:Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;

    iget-object v0, v0, Lcom/vivo/sdkplugin/activity/InfoMoreListHelper;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method
