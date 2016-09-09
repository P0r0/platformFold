.class Lcom/vivo/upgrade/CheckSystemUpdate$3;
.super Ljava/lang/Object;
.source "CheckSystemUpdate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/upgrade/CheckSystemUpdate;->showSystemUpdateDialog(Lcom/vivo/upgrade/SystemUpdateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/upgrade/CheckSystemUpdate;

.field private final synthetic val$stateCode:I


# direct methods
.method constructor <init>(Lcom/vivo/upgrade/CheckSystemUpdate;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vivo/upgrade/CheckSystemUpdate$3;->this$0:Lcom/vivo/upgrade/CheckSystemUpdate;

    iput p2, p0, Lcom/vivo/upgrade/CheckSystemUpdate$3;->val$stateCode:I

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 186
    return-void
.end method
