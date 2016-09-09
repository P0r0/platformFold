.class final Lcom/vivo/sdkplugin/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/sdkplugin/SelfUpdateDialog;


# direct methods
.method constructor <init>(Lcom/vivo/sdkplugin/SelfUpdateDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/vivo/sdkplugin/s;->a:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/s;->a:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    invoke-static {v0}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->b(Lcom/vivo/sdkplugin/SelfUpdateDialog;)Lcom/vivo/sdkplugin/SelfUpdateDialog$NegativeOnClickListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/vivo/sdkplugin/s;->a:Lcom/vivo/sdkplugin/SelfUpdateDialog;

    invoke-static {v0}, Lcom/vivo/sdkplugin/SelfUpdateDialog;->b(Lcom/vivo/sdkplugin/SelfUpdateDialog;)Lcom/vivo/sdkplugin/SelfUpdateDialog$NegativeOnClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/sdkplugin/SelfUpdateDialog$NegativeOnClickListener;->onClick()V

    :cond_11
    return-void
.end method
