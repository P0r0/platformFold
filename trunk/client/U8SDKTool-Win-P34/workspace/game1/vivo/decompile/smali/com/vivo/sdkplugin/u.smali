.class final Lcom/vivo/sdkplugin/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/TempNoticeDialog;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/TempNoticeDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/u;->a:Lcom/vivo/sdkplugin/TempNoticeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/u;->a:Lcom/vivo/sdkplugin/TempNoticeDialog;

    invoke-static {v0}, Lcom/vivo/sdkplugin/TempNoticeDialog;->b(Lcom/vivo/sdkplugin/TempNoticeDialog;)Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/vivo/sdkplugin/u;->a:Lcom/vivo/sdkplugin/TempNoticeDialog;

    invoke-static {v0}, Lcom/vivo/sdkplugin/TempNoticeDialog;->b(Lcom/vivo/sdkplugin/TempNoticeDialog;)Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/sdkplugin/TempNoticeDialog$CancelClickListener;->onClick()V

    :cond_11
    iget-object v0, p0, Lcom/vivo/sdkplugin/u;->a:Lcom/vivo/sdkplugin/TempNoticeDialog;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/TempNoticeDialog;->dismiss()V

    return-void
.end method
