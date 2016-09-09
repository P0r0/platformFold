.class Lcom/vivo/upgrade/SelfUpdateDialog$2;
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

.field private final synthetic val$dialogType:I


# direct methods
.method constructor <init>(Lcom/vivo/upgrade/SelfUpdateDialog;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vivo/upgrade/SelfUpdateDialog$2;->this$0:Lcom/vivo/upgrade/SelfUpdateDialog;

    iput p2, p0, Lcom/vivo/upgrade/SelfUpdateDialog$2;->val$dialogType:I

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog$2;->this$0:Lcom/vivo/upgrade/SelfUpdateDialog;

    const/4 v1, 0x1

    iput v1, v0, Lcom/vivo/upgrade/SelfUpdateDialog;->mWhichBtn:I

    .line 114
    iget v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog$2;->val$dialogType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 115
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog$2;->this$0:Lcom/vivo/upgrade/SelfUpdateDialog;

    invoke-virtual {v0}, Lcom/vivo/upgrade/SelfUpdateDialog;->dismiss()V

    .line 121
    :cond_f
    :goto_f
    return-void

    .line 117
    :cond_10
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog$2;->this$0:Lcom/vivo/upgrade/SelfUpdateDialog;

    # getter for: Lcom/vivo/upgrade/SelfUpdateDialog;->mDownClickListener:Lcom/vivo/upgrade/SelfUpdateDialog$UpdateDownListener;
    invoke-static {v0}, Lcom/vivo/upgrade/SelfUpdateDialog;->access$0(Lcom/vivo/upgrade/SelfUpdateDialog;)Lcom/vivo/upgrade/SelfUpdateDialog$UpdateDownListener;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 118
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog$2;->this$0:Lcom/vivo/upgrade/SelfUpdateDialog;

    # getter for: Lcom/vivo/upgrade/SelfUpdateDialog;->mDownClickListener:Lcom/vivo/upgrade/SelfUpdateDialog$UpdateDownListener;
    invoke-static {v0}, Lcom/vivo/upgrade/SelfUpdateDialog;->access$0(Lcom/vivo/upgrade/SelfUpdateDialog;)Lcom/vivo/upgrade/SelfUpdateDialog$UpdateDownListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/upgrade/SelfUpdateDialog$UpdateDownListener;->onControlDown()V

    goto :goto_f
.end method
