.class Lcom/baidu/bdgame/sdk/obf/cz$a;
.super Lcom/baidu/bdgame/sdk/obf/mu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/cz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/cz;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Lcom/baidu/bdgame/sdk/obf/cz;)V
    .registers 2

    .prologue
    .line 158
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->a:Lcom/baidu/bdgame/sdk/obf/cz;

    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/mu;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bdgame/sdk/obf/cz;Lcom/baidu/bdgame/sdk/obf/cz$1;)V
    .registers 3

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cz$a;-><init>(Lcom/baidu/bdgame/sdk/obf/cz;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/cz$a;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/cz$a;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/cz$a;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/cz$a;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/cz$a;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/cz$a;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/cz$a;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/cz$a;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->j:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/bdgame/sdk/obf/cz$a;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/bdgame/sdk/obf/cz$a;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic k(Lcom/baidu/bdgame/sdk/obf/cz$a;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->k:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->a:Lcom/baidu/bdgame/sdk/obf/cz;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cz;->c(Lcom/baidu/bdgame/sdk/obf/cz;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "txt_name"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->b:Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->a:Lcom/baidu/bdgame/sdk/obf/cz;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cz;->d(Lcom/baidu/bdgame/sdk/obf/cz;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "txt_money"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->c:Landroid/widget/TextView;

    .line 176
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->a:Lcom/baidu/bdgame/sdk/obf/cz;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cz;->e(Lcom/baidu/bdgame/sdk/obf/cz;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "txt_time"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->d:Landroid/widget/TextView;

    .line 177
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->a:Lcom/baidu/bdgame/sdk/obf/cz;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cz;->f(Lcom/baidu/bdgame/sdk/obf/cz;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "img_status"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->e:Landroid/widget/ImageView;

    .line 178
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->a:Lcom/baidu/bdgame/sdk/obf/cz;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cz;->g(Lcom/baidu/bdgame/sdk/obf/cz;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lin_detail"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->f:Landroid/widget/LinearLayout;

    .line 179
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->a:Lcom/baidu/bdgame/sdk/obf/cz;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cz;->h(Lcom/baidu/bdgame/sdk/obf/cz;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "txt_item_name"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->g:Landroid/widget/TextView;

    .line 180
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->a:Lcom/baidu/bdgame/sdk/obf/cz;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cz;->i(Lcom/baidu/bdgame/sdk/obf/cz;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "txt_pay_name"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->h:Landroid/widget/TextView;

    .line 181
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->a:Lcom/baidu/bdgame/sdk/obf/cz;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cz;->j(Lcom/baidu/bdgame/sdk/obf/cz;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "txt_order_no"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->i:Landroid/widget/TextView;

    .line 182
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->a:Lcom/baidu/bdgame/sdk/obf/cz;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cz;->k(Lcom/baidu/bdgame/sdk/obf/cz;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "btn_complain"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->j:Landroid/widget/Button;

    .line 183
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->a:Lcom/baidu/bdgame/sdk/obf/cz;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cz;->l(Lcom/baidu/bdgame/sdk/obf/cz;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "img_triangle"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->k:Landroid/widget/ImageView;

    .line 184
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->a:Lcom/baidu/bdgame/sdk/obf/cz;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cz;->m(Lcom/baidu/bdgame/sdk/obf/cz;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "img_have_more"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->l:Landroid/widget/ImageView;

    .line 185
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cz$a;->j:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cz$a$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/cz$a$1;-><init>(Lcom/baidu/bdgame/sdk/obf/cz$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    return-void
.end method
