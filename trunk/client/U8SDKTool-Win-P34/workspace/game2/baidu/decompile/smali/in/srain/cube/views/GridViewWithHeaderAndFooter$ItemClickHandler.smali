.class Lin/srain/cube/views/GridViewWithHeaderAndFooter$ItemClickHandler;
.super Ljava/lang/Object;
.source "GridViewWithHeaderAndFooter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/srain/cube/views/GridViewWithHeaderAndFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemClickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lin/srain/cube/views/GridViewWithHeaderAndFooter;


# direct methods
.method private constructor <init>(Lin/srain/cube/views/GridViewWithHeaderAndFooter;)V
    .registers 2

    .prologue
    .line 856
    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$ItemClickHandler;->this$0:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lin/srain/cube/views/GridViewWithHeaderAndFooter;Lin/srain/cube/views/GridViewWithHeaderAndFooter$1;)V
    .registers 3
    .param p1, "x0"    # Lin/srain/cube/views/GridViewWithHeaderAndFooter;
    .param p2, "x1"    # Lin/srain/cube/views/GridViewWithHeaderAndFooter$1;

    .prologue
    .line 856
    invoke-direct {p0, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$ItemClickHandler;-><init>(Lin/srain/cube/views/GridViewWithHeaderAndFooter;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 860
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$ItemClickHandler;->this$0:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    # getter for: Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->access$200(Lin/srain/cube/views/GridViewWithHeaderAndFooter;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 861
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$ItemClickHandler;->this$0:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    invoke-virtual {v0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getHeaderViewCount()I

    move-result v0

    iget-object v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$ItemClickHandler;->this$0:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    # invokes: Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I
    invoke-static {v1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->access$300(Lin/srain/cube/views/GridViewWithHeaderAndFooter;)I

    move-result v1

    mul-int/2addr v0, v1

    sub-int v3, p3, v0

    .line 862
    .local v3, "resPos":I
    if-ltz v3, :cond_25

    .line 863
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$ItemClickHandler;->this$0:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    # getter for: Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->access$200(Lin/srain/cube/views/GridViewWithHeaderAndFooter;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 866
    .end local v3    # "resPos":I
    :cond_25
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 870
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$ItemClickHandler;->this$0:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    # getter for: Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->access$400(Lin/srain/cube/views/GridViewWithHeaderAndFooter;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 871
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$ItemClickHandler;->this$0:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    invoke-virtual {v0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getHeaderViewCount()I

    move-result v0

    iget-object v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$ItemClickHandler;->this$0:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    # invokes: Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I
    invoke-static {v1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->access$300(Lin/srain/cube/views/GridViewWithHeaderAndFooter;)I

    move-result v1

    mul-int/2addr v0, v1

    sub-int v3, p3, v0

    .line 872
    .local v3, "resPos":I
    if-ltz v3, :cond_25

    .line 873
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$ItemClickHandler;->this$0:Lin/srain/cube/views/GridViewWithHeaderAndFooter;

    # getter for: Lin/srain/cube/views/GridViewWithHeaderAndFooter;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->access$400(Lin/srain/cube/views/GridViewWithHeaderAndFooter;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 876
    .end local v3    # "resPos":I
    :cond_25
    const/4 v0, 0x1

    return v0
.end method
