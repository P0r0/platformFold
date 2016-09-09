.class Lcom/vivo/upgrade/SelfUpdateDialog$4;
.super Ljava/lang/Object;
.source "SelfUpdateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/upgrade/SelfUpdateDialog;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/upgrade/SelfUpdateDialog;


# direct methods
.method constructor <init>(Lcom/vivo/upgrade/SelfUpdateDialog;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vivo/upgrade/SelfUpdateDialog$4;->this$0:Lcom/vivo/upgrade/SelfUpdateDialog;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog$4;->this$0:Lcom/vivo/upgrade/SelfUpdateDialog;

    const/4 v1, 0x3

    iput v1, v0, Lcom/vivo/upgrade/SelfUpdateDialog;->mWhichBtn:I

    .line 145
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog$4;->this$0:Lcom/vivo/upgrade/SelfUpdateDialog;

    # getter for: Lcom/vivo/upgrade/SelfUpdateDialog;->mDownClickListener:Lcom/vivo/upgrade/SelfUpdateDialog$UpdateDownListener;
    invoke-static {v0}, Lcom/vivo/upgrade/SelfUpdateDialog;->access$0(Lcom/vivo/upgrade/SelfUpdateDialog;)Lcom/vivo/upgrade/SelfUpdateDialog$UpdateDownListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 146
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog$4;->this$0:Lcom/vivo/upgrade/SelfUpdateDialog;

    # getter for: Lcom/vivo/upgrade/SelfUpdateDialog;->mDownClickListener:Lcom/vivo/upgrade/SelfUpdateDialog$UpdateDownListener;
    invoke-static {v0}, Lcom/vivo/upgrade/SelfUpdateDialog;->access$0(Lcom/vivo/upgrade/SelfUpdateDialog;)Lcom/vivo/upgrade/SelfUpdateDialog$UpdateDownListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/upgrade/SelfUpdateDialog$UpdateDownListener;->onControlDown()V

    .line 148
    :cond_16
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog$4;->this$0:Lcom/vivo/upgrade/SelfUpdateDialog;

    invoke-virtual {v0}, Lcom/vivo/upgrade/SelfUpdateDialog;->dismiss()V

    .line 150
    return-void
.end method
