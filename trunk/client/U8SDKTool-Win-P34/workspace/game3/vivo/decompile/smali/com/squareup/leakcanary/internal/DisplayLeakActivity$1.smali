.class Lcom/squareup/leakcanary/internal/DisplayLeakActivity$1;
.super Ljava/lang/Object;
.source "DisplayLeakActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
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
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$1;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$1;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    # invokes: Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->shareLeak()V
    invoke-static {v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$3(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    .line 128
    const/4 v0, 0x1

    return v0
.end method
