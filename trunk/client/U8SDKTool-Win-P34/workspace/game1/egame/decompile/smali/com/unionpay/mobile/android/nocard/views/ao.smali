.class public Lcom/unionpay/mobile/android/nocard/views/ao;
.super Lcom/unionpay/mobile/android/nocard/views/b;

# interfaces
.implements Lcom/unionpay/mobile/android/upviews/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/nocard/views/ao$a;
    }
.end annotation


# instance fields
.field private A:Landroid/os/Handler;

.field r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private s:I

.field private t:I

.field private u:Landroid/widget/Button;

.field private v:Lcom/unionpay/mobile/android/upviews/a;

.field private w:Lcom/unionpay/mobile/android/views/order/o;

.field private x:Landroid/widget/LinearLayout;

.field private y:Z

.field private z:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/nocard/views/b;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V

    iput v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->s:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->t:I

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->u:Landroid/widget/Button;

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->v:Lcom/unionpay/mobile/android/upviews/a;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->r:Ljava/util/List;

    iput-boolean v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->y:Z

    iput-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->z:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/ap;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/nocard/views/ap;-><init>(Lcom/unionpay/mobile/android/nocard/views/ao;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->A:Landroid/os/Handler;

    const/4 v0, 0x2

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->f:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->az:Z

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->au:Z

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/unionpay/mobile/android/model/b;->aK:I

    :cond_3f
    const-string v0, "order"

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->q:Ljava/lang/String;

    const v0, -0x10100c

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->ac:I

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/ao;->e()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->ax:Z

    if-eqz v0, :cond_6c

    :cond_60
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/aq;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/nocard/views/aq;-><init>(Lcom/unionpay/mobile/android/nocard/views/ao;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->z:Landroid/os/Handler;

    :cond_6c
    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/nocard/views/ao;I)I
    .registers 2

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->t:I

    return p1
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/nocard/views/ao;)Lcom/unionpay/mobile/android/views/order/o;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    return-object v0
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/model/d;)Ljava/util/Map;
    .registers 2

    invoke-static {p0}, Lcom/unionpay/mobile/android/nocard/views/ao;->b(Lcom/unionpay/mobile/android/model/d;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/nocard/views/ao;I)I
    .registers 2

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->s:I

    return p1
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/nocard/views/ao;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->x:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private static b(Lcom/unionpay/mobile/android/model/d;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unionpay/mobile/android/model/d;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/unionpay/mobile/android/model/d;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " **** "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/unionpay/mobile/android/model/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/unionpay/mobile/android/model/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/unionpay/mobile/android/model/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lcom/unionpay/mobile/android/model/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "text2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/nocard/views/ao;)V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->p:Ljava/lang/String;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_34

    const/4 v0, 0x4

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->s:I

    iput-boolean v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->j:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    const-string v0, "\"user_id\":\"%s\""

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->p:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->m(Ljava/lang/String;)V

    :goto_33
    return-void

    :cond_34
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/unionpay/mobile/android/model/b;->aK:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->d(I)V

    goto :goto_33
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/nocard/views/ao;I)V
    .registers 7

    const/4 v0, 0x6

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->s:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->j:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/unionpay/mobile/android/model/b;->aW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/model/d;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/model/d;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/unionpay/mobile/android/model/b;->aW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/model/d;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/model/d;->e()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/unionpay/mobile/android/model/b;->aW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/model/d;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/model/d;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iput p1, v3, Lcom/unionpay/mobile/android/model/b;->aX:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\"pan\":\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\",\"carrier_tp\":\"9\",\"issuer\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"type\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uppay"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const-string v2, "cardrules"

    invoke-virtual {v1, v2, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/nocard/views/ao;)V
    .registers 2

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->d(I)V

    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v0, p1, v2}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;Z)I

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->b(I)V

    :cond_c
    :goto_c
    iput v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->s:I

    return-void

    :cond_f
    invoke-static {p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/model/e;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->u:Lorg/json/JSONArray;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->u:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_28

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->a(ILcom/unionpay/mobile/android/model/e;)V

    goto :goto_c

    :cond_28
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->y:Lorg/json/JSONArray;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->y:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->d(I)V

    goto :goto_c
.end method

.method static synthetic e(Lcom/unionpay/mobile/android/nocard/views/ao;)V
    .registers 7

    const/4 v5, 0x1

    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->bf:Z

    if-eqz v0, :cond_31

    sget-object v0, Lcom/unionpay/mobile/android/model/b;->aW:Ljava/util/List;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/unionpay/mobile/android/model/b;->aW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_31

    :cond_11
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->az:Z

    if-eqz v0, :cond_19

    move v4, v5

    :cond_19
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v0, Lcom/unionpay/mobile/android/languages/c;->bq:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v0, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/lang/String;

    sget v0, Lcom/unionpay/mobile/android/global/a;->t:I

    sget v3, Lcom/unionpay/mobile/android/global/a;->k:I

    sub-int/2addr v0, v3

    sget v3, Lcom/unionpay/mobile/android/global/a;->s:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/unionpay/mobile/android/nocard/views/ao;->a(Ljava/lang/String;Ljava/lang/String;IZZ)V

    :goto_30
    return-void

    :cond_31
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/unionpay/mobile/android/model/b;->aK:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->d(I)V

    goto :goto_30
.end method

.method private e(Lorg/json/JSONObject;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->b(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;)I

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->b(I)V

    :goto_c
    return-void

    :cond_d
    const-string v0, "userId"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    const-string v2, "_login"

    sget-object v3, Lcom/unionpay/mobile/android/utils/o;->e:[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/unionpay/mobile/android/nocard/views/ao;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_27
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/views/order/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/PreferenceUtils;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3c
    invoke-static {p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/model/e;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->a(ILcom/unionpay/mobile/android/model/e;)V

    iput v5, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->s:I

    goto :goto_c
.end method


# virtual methods
.method protected a(Landroid/os/Handler;)V
    .registers 2

    return-void
.end method

.method protected final a(Lcom/unionpay/mobile/android/model/a;)V
    .registers 6

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->bl:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iput-object p1, v0, Lcom/unionpay/mobile/android/model/b;->bm:Lcom/unionpay/mobile/android/model/c;

    const/4 v0, 0x2

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->s:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "0"

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->H:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->H:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\"pan\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/model/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    const-string v3, "1\",\"carrier_tp\":\"10"

    invoke-static {v0, v1, v2, v3}, Lcom/unionpay/mobile/android/nocard/views/bh;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->g:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/unionpay/mobile/android/nocard/views/bh;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/upviews/a$a;)V
    .registers 2

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 6

    const/4 v2, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/m;->c()V

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->s:I

    packed-switch v0, :pswitch_data_106

    :cond_c
    :goto_c
    return-void

    :pswitch_d
    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/ao;->b(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/ao;->d(Lorg/json/JSONObject;)V

    goto :goto_c

    :pswitch_17
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v3, "login_rules"

    invoke-static {p1, v3}, Lcom/unionpay/mobile/android/utils/i;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, v0, Lcom/unionpay/mobile/android/model/b;->S:Lorg/json/JSONArray;

    const-string v3, "register_url"

    invoke-static {p1, v3}, Lcom/unionpay/mobile/android/utils/i;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, v0, Lcom/unionpay/mobile/android/model/b;->T:Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/unionpay/mobile/android/model/b;->S:Lorg/json/JSONArray;

    if-eqz v3, :cond_35

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->S:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_103

    :cond_35
    move v0, v2

    :goto_36
    if-eqz v0, :cond_3e

    invoke-virtual {p0, v2}, Lcom/unionpay/mobile/android/nocard/views/ao;->b(I)V

    :goto_3b
    iput v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->s:I

    goto :goto_c

    :cond_3e
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->d(I)V

    goto :goto_3b

    :pswitch_44
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->t:I

    iget-object v3, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    if-eqz v3, :cond_59

    iget-object v3, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_59

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_59
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_92

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->t:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v2, v2, Lcom/unionpay/mobile/android/model/b;->I:I

    if-ne v0, v2, :cond_81

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iput v1, v0, Lcom/unionpay/mobile/android/model/b;->I:I

    :cond_75
    :goto_75
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v2, v2, Lcom/unionpay/mobile/android/model/b;->I:I

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/views/order/o;->c(I)V

    :goto_7e
    iput v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->s:I

    goto :goto_c

    :cond_81
    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->t:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v2, v2, Lcom/unionpay/mobile/android/model/b;->I:I

    if-ge v0, v2, :cond_75

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v2, v0, Lcom/unionpay/mobile/android/model/b;->I:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/unionpay/mobile/android/model/b;->I:I

    goto :goto_75

    :cond_92
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    const/4 v2, -0x1

    iput v2, v0, Lcom/unionpay/mobile/android/model/b;->I:I

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/ao;->c()V

    goto :goto_7e

    :pswitch_9b
    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/ao;->b(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/ao;->e(Lorg/json/JSONObject;)V

    goto/16 :goto_c

    :pswitch_a6
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/ao;->j()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v0, p1, v1}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;Z)I

    move-result v0

    if-eqz v0, :cond_b6

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->b(I)V

    goto/16 :goto_c

    :cond_b6
    invoke-static {p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/model/e;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->u:Lorg/json/JSONArray;

    if-eqz v1, :cond_d0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->u:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_d0

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->a(ILcom/unionpay/mobile/android/model/e;)V

    goto/16 :goto_c

    :cond_d0
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->y:Lorg/json/JSONArray;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->y:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->d(I)V

    goto/16 :goto_c

    :pswitch_e6
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/m;->c()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v0, p1, v1}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;Z)I

    move-result v0

    if-eqz v0, :cond_f8

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->b(I)V

    goto/16 :goto_c

    :cond_f8
    invoke-static {p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/model/e;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->a(ILcom/unionpay/mobile/android/model/e;)V

    goto/16 :goto_c

    :cond_103
    move v0, v1

    goto/16 :goto_36

    :pswitch_data_106
    .packed-switch 0x1
        :pswitch_17
        :pswitch_d
        :pswitch_44
        :pswitch_9b
        :pswitch_a6
        :pswitch_e6
    .end packed-switch
.end method

.method public final a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->u:Landroid/widget/Button;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->u:Landroid/widget/Button;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->u:Landroid/widget/Button;

    if-nez p1, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_10
    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected final b()V
    .registers 9

    const/4 v7, -0x1

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v6, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v0, Lcom/unionpay/mobile/android/model/b;->j:Ljava/lang/String;

    new-instance v0, Lcom/unionpay/mobile/android/widgets/ax;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p0}, Lcom/unionpay/mobile/android/widgets/ax;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unionpay/mobile/android/widgets/ax$a;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v1, v1, Lcom/unionpay/mobile/android/model/b;->E:Z

    if-nez v1, :cond_8e

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v1, v1, Lcom/unionpay/mobile/android/model/b;->az:Z

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v1, v1, Lcom/unionpay/mobile/android/model/b;->aK:I

    sget-object v3, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v1, v3, :cond_58

    :cond_2a
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v1, v1, Lcom/unionpay/mobile/android/model/b;->aK:I

    sget-object v3, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v1, v3, :cond_58

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v1, v1, Lcom/unionpay/mobile/android/model/b;->aK:I

    sget-object v3, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_70

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v1, v1, Lcom/unionpay/mobile/android/model/b;->ax:Z

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_70

    :cond_58
    new-instance v0, Lcom/unionpay/mobile/android/widgets/ax;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v4, 0x406

    invoke-virtual {v3, v4}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v4, v5}, Lcom/unionpay/mobile/android/utils/f;->a(Landroid/content/Context;F)I

    move-result v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/unionpay/mobile/android/widgets/ax;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILcom/unionpay/mobile/android/widgets/ax$a;)V

    :cond_70
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v1, v1, Lcom/unionpay/mobile/android/model/b;->aK:I

    sget-object v2, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_83

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->bq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/ax;->a(Ljava/lang/String;)V

    :cond_83
    :goto_83
    const/16 v1, 0xd

    invoke-virtual {v6, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_8e
    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/ax;->a(Ljava/lang/String;)V

    goto :goto_83
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method protected final b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    const-string v0, "init"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->E:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/ao;->n()V

    :cond_11
    :goto_11
    return-void

    :cond_12
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->s:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    invoke-direct {p0, p2}, Lcom/unionpay/mobile/android/nocard/views/ao;->d(Lorg/json/JSONObject;)V

    goto :goto_11

    :cond_23
    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->s:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    invoke-direct {p0, p2}, Lcom/unionpay/mobile/android/nocard/views/ao;->e(Lorg/json/JSONObject;)V

    goto :goto_11

    :cond_2c
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->j:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->s:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method protected final c()V
    .registers 11

    const/16 v9, 0x11

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v7, -0x2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->o:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    invoke-virtual {v0, p0}, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->a(Lcom/unionpay/mobile/android/upwidget/UPScrollView$a;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->aK:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_32

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->E:Z

    if-eqz v0, :cond_153

    :cond_32
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    invoke-static {v0, v1, v5}, Lcom/unionpay/mobile/android/nocard/views/xlistview/a;->a(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->E:Z

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->aK:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_5a

    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v1, v1, Lcom/unionpay/mobile/android/model/b;->aK:I

    if-ne v0, v1, :cond_5b

    :cond_5a
    const/4 v2, 0x0

    :cond_5b
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->r:Lorg/json/JSONObject;

    const-string v1, "label"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->o:Lorg/json/JSONArray;

    invoke-static/range {v0 .. v5}, Lcom/unionpay/mobile/android/views/order/o;->a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/o;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    :goto_71
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/ao$a;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/nocard/views/ao$a;-><init>(Lcom/unionpay/mobile/android/nocard/views/ao;)V

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/o;->a(Lcom/unionpay/mobile/android/views/order/o$a;)Lcom/unionpay/mobile/android/views/order/o;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->ap:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/o;->b(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/o;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->T:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/o;->c(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/o;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bc

    :try_start_97
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "href"

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "title"

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "label"

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/views/order/o;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/o;
    :try_end_bc
    .catch Lorg/json/JSONException; {:try_start_97 .. :try_end_bc} :catch_33f

    :cond_bc
    :goto_bc
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/views/order/o;->b(Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/o;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->m:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->aK:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_152

    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->bf:Z

    if-nez v0, :cond_152

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->A:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->a(Landroid/os/Handler;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->x:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v0, Lcom/unionpay/mobile/android/global/a;->w:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->bs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/unionpay/mobile/android/global/b;->l:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const v1, -0x99999a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    sget v2, Lcom/unionpay/mobile/android/global/a;->b:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/views/order/o;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->n:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->m:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_152
    return-void

    :cond_153
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->aK:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_169

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/unionpay/mobile/android/views/order/o;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/o;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    goto/16 :goto_71

    :cond_169
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->aK:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1bf

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-boolean v1, Lcom/unionpay/mobile/android/model/b;->bf:Z

    if-eqz v1, :cond_1a8

    sget-object v0, Lcom/unionpay/mobile/android/model/b;->aW:Ljava/util/List;

    if-eqz v0, :cond_1ad

    sget-object v0, Lcom/unionpay/mobile/android/model/b;->aW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1ad

    sget-object v0, Lcom/unionpay/mobile/android/model/b;->aW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v1, v6

    :goto_191
    if-ge v1, v2, :cond_1ad

    sget-object v0, Lcom/unionpay/mobile/android/model/b;->aW:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/model/d;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->b(Lcom/unionpay/mobile/android/model/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->r:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_191

    :cond_1a8
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1ad
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->o:Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->r:Ljava/util/List;

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/unionpay/mobile/android/views/order/o;->b(Landroid/content/Context;Lorg/json/JSONArray;Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/o;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    goto/16 :goto_71

    :cond_1bf
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/unionpay/mobile/android/views/order/o;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/o;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->w:Lcom/unionpay/mobile/android/views/order/o;

    invoke-virtual {v2, v4}, Lcom/unionpay/mobile/android/views/order/o;->a(Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/o;

    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->o:Lorg/json/JSONArray;

    invoke-static {v1}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lorg/json/JSONArray;)Z

    move-result v3

    if-nez v3, :cond_2a4

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->q:Lorg/json/JSONObject;

    const-string v4, "label"

    invoke-static {v1, v4}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->q:Lorg/json/JSONObject;

    if-eqz v4, :cond_1f9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1f9

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/2addr v0, v1

    :cond_1f9
    const-string v1, "uppay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->r:Lorg/json/JSONObject;

    const-string v4, "label"

    invoke-static {v1, v4}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->r:Lorg/json/JSONObject;

    if-eqz v4, :cond_23e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_23e

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    if-eqz v1, :cond_23e

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_23e

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    invoke-static {v1, v4, v5}, Lcom/unionpay/mobile/android/nocard/views/xlistview/a;->a(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/unionpay/mobile/android/views/order/o;->a(Ljava/util/List;)Lcom/unionpay/mobile/android/views/order/o;

    :cond_23e
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v1, v1, Lcom/unionpay/mobile/android/model/b;->as:Z

    if-eqz v1, :cond_257

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v1, v1, Lcom/unionpay/mobile/android/model/b;->at:Z

    if-eqz v1, :cond_257

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v1, v1, Lcom/unionpay/mobile/android/model/b;->ax:Z

    if-nez v1, :cond_257

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/2addr v0, v1

    :cond_257
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/ao;->u()Z

    move-result v1

    if-eqz v1, :cond_270

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v1, v1, Lcom/unionpay/mobile/android/model/b;->au:Z

    if-eqz v1, :cond_270

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v1, v1, Lcom/unionpay/mobile/android/model/b;->ax:Z

    if-nez v1, :cond_270

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/2addr v0, v1

    :cond_270
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/ao;->u()Z

    move-result v1

    if-eqz v1, :cond_2a4

    sget-boolean v1, Lcom/unionpay/mobile/android/model/b;->av:Z

    if-eqz v1, :cond_2a4

    sget-boolean v1, Lcom/unionpay/mobile/android/model/b;->aw:Z

    if-eqz v1, :cond_2a4

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v1, v1, Lcom/unionpay/mobile/android/model/b;->aK:I

    sget-object v4, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v1, v4, :cond_2a4

    const-string v1, "1"

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->ai:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a4

    const-string v1, "spay"

    const-string v4, "in"

    invoke-static {v1, v4}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/2addr v0, v1

    :cond_2a4
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v1, v1, Lcom/unionpay/mobile/android/model/b;->ay:Z

    if-eqz v1, :cond_2b0

    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_2b0
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v1, v1, Lcom/unionpay/mobile/android/model/b;->ax:Z

    if-eqz v1, :cond_317

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_317

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    if-eqz v1, :cond_2d0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_317

    :cond_2d0
    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v4, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/2addr v0, v4

    invoke-virtual {v2, v1}, Lcom/unionpay/mobile/android/views/order/o;->b(I)Lcom/unionpay/mobile/android/views/order/o;

    :cond_2e6
    :goto_2e6
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->o:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lcom/unionpay/mobile/android/views/order/o;->a(Lorg/json/JSONArray;)Lcom/unionpay/mobile/android/views/order/o;

    const-string v1, "uppay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->r:Lorg/json/JSONObject;

    const-string v4, "label"

    invoke-static {v1, v4}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/unionpay/mobile/android/views/order/o;->a(Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/o;

    invoke-virtual {v2, v0}, Lcom/unionpay/mobile/android/views/order/o;->a(I)Lcom/unionpay/mobile/android/views/order/o;

    invoke-virtual {v2, v3}, Lcom/unionpay/mobile/android/views/order/o;->a(Z)Lcom/unionpay/mobile/android/views/order/o;

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/views/order/o;->c()V

    goto/16 :goto_71

    :cond_317
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v1, v4}, Lcom/unionpay/mobile/android/nocard/utils/c;->a(Landroid/content/Context;Lcom/unionpay/mobile/android/model/b;)I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_32e

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v4, v4, Lcom/unionpay/mobile/android/model/b;->ay:Z

    if-nez v4, :cond_32e

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_32e
    invoke-virtual {v2, v1}, Lcom/unionpay/mobile/android/views/order/o;->b(I)Lcom/unionpay/mobile/android/views/order/o;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v1, v1, Lcom/unionpay/mobile/android/model/b;->ay:Z

    if-nez v1, :cond_2e6

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_2e6

    :catch_33f
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_bc
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method protected final d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iput-object p2, v0, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final l()V
    .registers 6

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->az:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->E:Z

    if-eqz v0, :cond_15

    invoke-super {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->l()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->E:Z

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->az:Z

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->aK:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_49

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->aK:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_55

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->ax:Z

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_55

    :cond_49
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->aK:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_63

    :cond_55
    invoke-super {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->l()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/unionpay/mobile/android/model/b;->aK:I

    goto :goto_14

    :cond_63
    new-instance v0, Lcom/unionpay/mobile/android/nocard/views/ar;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/nocard/views/ar;-><init>(Lcom/unionpay/mobile/android/nocard/views/ao;)V

    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/as;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/nocard/views/as;-><init>(Lcom/unionpay/mobile/android/nocard/views/ao;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v2, v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->Y:Ljava/lang/String;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->av:Ljava/lang/String;

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->W:Ljava/lang/String;

    sget-object v4, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v4, v4, Lcom/unionpay/mobile/android/languages/c;->X:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->onAttachedToWindow()V

    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->bg:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->aK:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_31

    const-string v0, "1"

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->ai:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "spay"

    const-string v1, "out"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->bj:Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->bk:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/nocard/views/ao;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->v:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->v:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->clearFocus()V

    :cond_c
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/b;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->y:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->z:Landroid/os/Handler;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->y:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao;->z:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_14
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Lcom/unionpay/mobile/android/nocard/views/b;->onLayout(ZIIII)V

    return-void
.end method

.method public final t()V
    .registers 1

    return-void
.end method

.method protected u()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected v()V
    .registers 1

    return-void
.end method
