.class Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$3;
.super Ljava/lang/Object;
.source "DisplayLeakActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;

.field private final synthetic val$leaks:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$3;->this$1:Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;

    iput-object p2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$3;->val$leaks:Ljava/util/List;

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 446
    sget-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->inFlight:Ljava/util/List;

    iget-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$3;->this$1:Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 447
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$3;->this$1:Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;

    # getter for: Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->activityOrNull:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;
    invoke-static {v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->access$0(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;)Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 448
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$3;->this$1:Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;

    # getter for: Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->activityOrNull:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;
    invoke-static {v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->access$0(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;)Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$3;->val$leaks:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$2(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;Ljava/util/List;)V

    .line 449
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$3;->this$1:Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;

    # getter for: Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->activityOrNull:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;
    invoke-static {v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->access$0(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;)Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    move-result-object v0

    # invokes: Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V
    invoke-static {v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$2(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    .line 451
    :cond_23
    return-void
.end method
