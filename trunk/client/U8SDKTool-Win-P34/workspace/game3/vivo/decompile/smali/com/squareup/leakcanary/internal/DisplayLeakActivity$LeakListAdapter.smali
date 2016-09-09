.class Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DisplayLeakActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/internal/DisplayLeakActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LeakListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .registers 2

    .prologue
    .line 302
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    # getter for: Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;
    invoke-static {v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$0(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    # getter for: Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;
    invoke-static {v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$0(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->getItem(I)Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 313
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v8, 0x10

    .line 317
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-direct {v2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 318
    .local v2, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 319
    const/16 v7, 0x30

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 320
    invoke-virtual {v2, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 321
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 322
    .local v6, "titleView":Landroid/widget/TextView;
    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 323
    new-instance v4, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 324
    .local v4, "timeView":Landroid/widget/TextView;
    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 325
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 326
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 327
    move-object p2, v2

    .line 328
    invoke-virtual {p0, p1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->getItem(I)Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v1

    .line 330
    .local v1, "leak":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    if-nez p1, :cond_8e

    iget-object v7, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    # getter for: Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;
    invoke-static {v7}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$0(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    # getter for: Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->maxStoredLeaks:I
    invoke-static {v8}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$1(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)I

    move-result v8

    if-ne v7, v8, :cond_8e

    .line 331
    const-string v0, "MAX. "

    .line 337
    .local v0, "index":Ljava/lang/String;
    :goto_4e
    iget-object v7, v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-object v7, v7, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    if-nez v7, :cond_b1

    .line 338
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-object v8, v8, Lcom/squareup/leakcanary/AnalysisResult;->className:Ljava/lang/String;

    invoke-static {v8}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->classSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has leaked"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 343
    .local v5, "title":Ljava/lang/String;
    :goto_77
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v7, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    iget-object v8, v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v8, v8, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    const/16 v10, 0x11

    invoke-static {v7, v8, v9, v10}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    .line 345
    .local v3, "time":Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    return-object p2

    .line 334
    .end local v0    # "index":Ljava/lang/String;
    .end local v3    # "time":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    :cond_8e
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->this$0:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    # getter for: Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;
    invoke-static {v8}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->access$0(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, p1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ". "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "index":Ljava/lang/String;
    goto :goto_4e

    .line 341
    :cond_b1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-object v8, v8, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    iget-object v8, v8, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "title":Ljava/lang/String;
    goto :goto_77
.end method
