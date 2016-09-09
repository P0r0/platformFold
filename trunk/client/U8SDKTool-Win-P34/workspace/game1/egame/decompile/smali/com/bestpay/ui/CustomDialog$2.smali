.class Lcom/bestpay/ui/CustomDialog$2;
.super Ljava/lang/Object;
.source "CustomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bestpay/ui/CustomDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bestpay/ui/CustomDialog;


# direct methods
.method constructor <init>(Lcom/bestpay/ui/CustomDialog;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bestpay/ui/CustomDialog$2;->this$0:Lcom/bestpay/ui/CustomDialog;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bestpay/ui/CustomDialog$2;->this$0:Lcom/bestpay/ui/CustomDialog;

    iget-object v0, v0, Lcom/bestpay/ui/CustomDialog;->mClickLister:Lcom/bestpay/ui/CustomDialog$ClickListener;

    invoke-interface {v0}, Lcom/bestpay/ui/CustomDialog$ClickListener;->doCancel()V

    .line 62
    return-void
.end method
