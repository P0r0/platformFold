.class Lcom/squareup/leakcanary/AndroidHeapDumper$2$1;
.super Ljava/lang/Object;
.source "AndroidHeapDumper.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/leakcanary/AndroidHeapDumper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/squareup/leakcanary/AndroidHeapDumper$2;

.field private final synthetic val$toast:Landroid/widget/Toast;

.field private final synthetic val$waitingForToast:Lcom/squareup/leakcanary/internal/FutureResult;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/AndroidHeapDumper$2;Lcom/squareup/leakcanary/internal/FutureResult;Landroid/widget/Toast;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/squareup/leakcanary/AndroidHeapDumper$2$1;->this$1:Lcom/squareup/leakcanary/AndroidHeapDumper$2;

    iput-object p2, p0, Lcom/squareup/leakcanary/AndroidHeapDumper$2$1;->val$waitingForToast:Lcom/squareup/leakcanary/internal/FutureResult;

    iput-object p3, p0, Lcom/squareup/leakcanary/AndroidHeapDumper$2$1;->val$toast:Landroid/widget/Toast;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/squareup/leakcanary/AndroidHeapDumper$2$1;->val$waitingForToast:Lcom/squareup/leakcanary/internal/FutureResult;

    iget-object v1, p0, Lcom/squareup/leakcanary/AndroidHeapDumper$2$1;->val$toast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Lcom/squareup/leakcanary/internal/FutureResult;->set(Ljava/lang/Object;)V

    .line 101
    const/4 v0, 0x0

    return v0
.end method
