.class Lcom/vivo/upgrade/SelfUpdateDialog$3;
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
    iput-object p1, p0, Lcom/vivo/upgrade/SelfUpdateDialog$3;->this$0:Lcom/vivo/upgrade/SelfUpdateDialog;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog$3;->this$0:Lcom/vivo/upgrade/SelfUpdateDialog;

    const/4 v1, 0x2

    iput v1, v0, Lcom/vivo/upgrade/SelfUpdateDialog;->mWhichBtn:I

    .line 132
    iget-object v0, p0, Lcom/vivo/upgrade/SelfUpdateDialog$3;->this$0:Lcom/vivo/upgrade/SelfUpdateDialog;

    invoke-virtual {v0}, Lcom/vivo/upgrade/SelfUpdateDialog;->dismiss()V

    .line 134
    return-void
.end method
