.class public Lcom/duoku/platform/a/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/a/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/bean/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;

.field private d:Lcom/duoku/platform/util/i;

.field private e:I

.field private f:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;ILandroid/app/Dialog;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/bean/d;",
            ">;",
            "Landroid/content/Context;",
            "I",
            "Landroid/app/Dialog;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/a/a;->b:Landroid/view/LayoutInflater;

    .line 42
    iput-object p1, p0, Lcom/duoku/platform/a/a;->a:Ljava/util/List;

    .line 43
    iput-object p2, p0, Lcom/duoku/platform/a/a;->c:Landroid/content/Context;

    .line 44
    iput p3, p0, Lcom/duoku/platform/a/a;->e:I

    .line 45
    iput-object p4, p0, Lcom/duoku/platform/a/a;->f:Landroid/app/Dialog;

    .line 46
    new-instance v0, Lcom/duoku/platform/util/i;

    invoke-direct {v0}, Lcom/duoku/platform/util/i;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/a/a;->d:Lcom/duoku/platform/util/i;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/a/a;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/duoku/platform/a/a;->f:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic b(Lcom/duoku/platform/a/a;)I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/duoku/platform/a/a;->e:I

    return v0
.end method

.method static synthetic c(Lcom/duoku/platform/a/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/duoku/platform/a/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/duoku/platform/a/a;)Ljava/util/List;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/duoku/platform/a/a;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/duoku/platform/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/duoku/platform/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 64
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    .prologue
    .line 72
    if-nez p2, :cond_9b

    .line 74
    iget-object v0, p0, Lcom/duoku/platform/a/a;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/duoku/platform/a/a;->c:Landroid/content/Context;

    const-string v2, "dk_back_grid_list"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 75
    new-instance v1, Lcom/duoku/platform/a/a$a;

    invoke-direct {v1, p0}, Lcom/duoku/platform/a/a$a;-><init>(Lcom/duoku/platform/a/a;)V

    .line 76
    iget-object v0, p0, Lcom/duoku/platform/a/a;->c:Landroid/content/Context;

    const-string v2, "dk_back_iv"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/widget/XCRoundRectImageView;

    iput-object v0, v1, Lcom/duoku/platform/a/a$a;->a:Lcom/duoku/platform/download/widget/XCRoundRectImageView;

    .line 77
    iget-object v0, p0, Lcom/duoku/platform/a/a;->c:Landroid/content/Context;

    const-string v2, "dk_back_tv"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/a/a$a;->b:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/duoku/platform/a/a;->c:Landroid/content/Context;

    const-string v2, "dk_back_btn_install"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/duoku/platform/a/a$a;->c:Landroid/widget/Button;

    .line 80
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 87
    :goto_49
    iget-object v2, v1, Lcom/duoku/platform/a/a$a;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/d;

    invoke-virtual {v0}, Lcom/duoku/platform/bean/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, v1, Lcom/duoku/platform/a/a$a;->a:Lcom/duoku/platform/download/widget/XCRoundRectImageView;

    new-instance v2, Lcom/duoku/platform/a/a$1;

    invoke-direct {v2, p0, p1}, Lcom/duoku/platform/a/a$1;-><init>(Lcom/duoku/platform/a/a;I)V

    invoke-virtual {v0, v2}, Lcom/duoku/platform/download/widget/XCRoundRectImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v2, v1, Lcom/duoku/platform/a/a$a;->a:Lcom/duoku/platform/download/widget/XCRoundRectImageView;

    iget-object v0, p0, Lcom/duoku/platform/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/d;

    invoke-virtual {v0}, Lcom/duoku/platform/bean/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/duoku/platform/download/widget/XCRoundRectImageView;->setTag(Ljava/lang/Object;)V

    .line 159
    iget-object v2, p0, Lcom/duoku/platform/a/a;->d:Lcom/duoku/platform/util/i;

    iget-object v0, p0, Lcom/duoku/platform/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/d;

    invoke-virtual {v0}, Lcom/duoku/platform/bean/d;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/duoku/platform/a/a$a;->a:Lcom/duoku/platform/download/widget/XCRoundRectImageView;

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v3, v4}, Lcom/duoku/platform/util/i;->a(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 160
    iget-object v0, v1, Lcom/duoku/platform/a/a$a;->c:Landroid/widget/Button;

    const-string v2, "\u4e0b\u8f7d"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, v1, Lcom/duoku/platform/a/a$a;->c:Landroid/widget/Button;

    new-instance v2, Lcom/duoku/platform/a/a$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/duoku/platform/a/a$2;-><init>(Lcom/duoku/platform/a/a;Lcom/duoku/platform/a/a$a;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    return-object p2

    .line 84
    :cond_9b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/a/a$a;

    move-object v1, v0

    goto :goto_49
.end method
