.class Lcom/gionee/gsp/dialog/GnDialogBase$1;
.super Ljava/lang/Object;
.source "GnDialogBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/dialog/GnDialogBase;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/gsp/dialog/GnDialogBase;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/dialog/GnDialogBase;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/dialog/GnDialogBase$1;->this$0:Lcom/gionee/gsp/dialog/GnDialogBase;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/gionee/gsp/dialog/GnDialogBase$1;->this$0:Lcom/gionee/gsp/dialog/GnDialogBase;

    invoke-virtual {v0}, Lcom/gionee/gsp/dialog/GnDialogBase;->dismiss()V

    .line 74
    return-void
.end method
