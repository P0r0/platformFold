.class Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;
.super Ljava/lang/Object;
.source "DisplayLeakActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 224
    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    # invokes: Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getVisibleLeak()Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    invoke-static {v2}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$5(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v1

    .line 225
    .local v1, "visibleLeak":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    iget-object v2, v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v2, v2, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-static {v2}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->leakResultFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 226
    .local v0, "resultFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 227
    iget-object v2, v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v2, v2, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 228
    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$7(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    # getter for: Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;
    invoke-static {v2}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$0(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 230
    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    # invokes: Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V
    invoke-static {v2}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$2(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    .line 231
    return-void
.end method
