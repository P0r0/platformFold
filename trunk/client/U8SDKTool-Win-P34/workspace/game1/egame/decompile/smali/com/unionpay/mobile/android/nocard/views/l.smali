.class public Lcom/unionpay/mobile/android/nocard/views/l;
.super Lcom/unionpay/mobile/android/nocard/views/b;

# interfaces
.implements Lcom/unionpay/mobile/android/utils/q$a;


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private volatile C:I

.field private D:Z

.field private E:Z

.field private F:Lorg/json/JSONArray;

.field private G:Lcom/unionpay/mobile/android/model/e;

.field private H:J

.field private I:Landroid/app/Activity;

.field private J:Z

.field private K:Z

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unionpay/mobile/android/model/c;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unionpay/mobile/android/model/c;",
            ">;"
        }
    .end annotation
.end field

.field t:I

.field u:Ljava/lang/String;

.field v:Ljava/lang/String;

.field w:Ljava/lang/String;

.field x:I

.field y:I

.field private z:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->z:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->A:Ljava/lang/String;

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->B:I

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->C:I

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->r:Ljava/util/List;

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->s:Ljava/util/List;

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->D:Z

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->E:Z

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->K:Z

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->t:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->u:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->v:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->w:Ljava/lang/String;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->x:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->y:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->f:I

    const-string v0, "init"

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->q:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->d()V

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->I:Landroid/app/Activity;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->I:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/nocard/utils/a;->a(Landroid/content/Intent;Lcom/unionpay/mobile/android/model/b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->J:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->aH:Z

    if-eqz v0, :cond_5c

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/l;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    :cond_5c
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->t()V

    return-void
.end method

.method private final C()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->F:Lorg/json/JSONArray;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->F:Lorg/json/JSONArray;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_c
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1d

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_19} :catch_20

    move-result v1

    if-nez v1, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    const/4 v1, 0x0

    goto :goto_c

    :catch_20
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1d
.end method

.method private final declared-synchronized D()V
    .registers 9

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_4
    const-string v2, "uppay"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "showContentView() +++"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->C:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->C:I

    if-eq v2, v5, :cond_55

    iget-boolean v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->E:Z

    if-nez v2, :cond_53

    move v3, v1

    :goto_23
    iget-boolean v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->E:Z

    if-eqz v2, :cond_4d

    const-string v2, "1"

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->ai:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4d

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget v2, v2, Lcom/unionpay/mobile/android/model/b;->aj:I

    invoke-direct {p0, v2}, Lcom/unionpay/mobile/android/nocard/views/l;->f(I)Z

    move-result v4

    if-eqz v4, :cond_285

    const v4, 0x11101

    and-int/2addr v2, v4

    if-nez v2, :cond_285

    move v2, v1

    :goto_44
    if-nez v2, :cond_4d

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v2, v2, Lcom/unionpay/mobile/android/model/b;->ay:Z
    :try_end_4a
    .catchall {:try_start_4 .. :try_end_4a} :catchall_ae

    if-nez v2, :cond_4d

    move v0, v1

    :cond_4d
    if-nez v3, :cond_51

    if-eqz v0, :cond_55

    :cond_51
    :goto_51
    monitor-exit p0

    return-void

    :cond_53
    move v3, v0

    goto :goto_23

    :cond_55
    :try_start_55
    iget-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->D:Z

    if-nez v0, :cond_51

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->D:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->aH:Z

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/m;->c()V

    :cond_67
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget v2, v0, Lcom/unionpay/mobile/android/model/b;->aj:I

    const-string v0, "1"

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->ai:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b8

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->ax:Z

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    :cond_82
    :goto_82
    const-string v0, "0"

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->ai:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16b

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_16b

    :cond_9e
    invoke-direct {p0, v2}, Lcom/unionpay/mobile/android/nocard/views/l;->f(I)Z

    move-result v0

    if-nez v0, :cond_16b

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ak:Ljava/lang/String;

    const-string v1, "fail"

    invoke-direct {p0, v0, v1}, Lcom/unionpay/mobile/android/nocard/views/l;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ad
    .catchall {:try_start_55 .. :try_end_ad} :catchall_ae

    goto :goto_51

    :catchall_ae
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_b1
    :try_start_b1
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->r:Ljava/util/List;

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    goto :goto_82

    :cond_b8
    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->av:Z

    if-eqz v0, :cond_ec

    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->aw:Z

    if-eqz v0, :cond_ec

    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->bh:Z

    if-nez v0, :cond_ec

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->s:Ljava/util/List;

    if-eqz v0, :cond_ec

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_ec

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d6
    :goto_d6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ec

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/model/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/model/c;->c()I

    move-result v0

    if-ne v0, v1, :cond_d6

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_d6

    :cond_ec
    const-string v0, "0"

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->ai:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_133

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->s:Ljava/util/List;

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    :cond_fe
    :goto_fe
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_82

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_116
    :goto_116
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/model/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/model/c;->c()I

    move-result v3

    if-eqz v3, :cond_116

    invoke-interface {v0}, Lcom/unionpay/mobile/android/model/c;->c()I

    move-result v0

    and-int/2addr v0, v2

    if-nez v0, :cond_116

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_116

    :cond_133
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->ax:Z

    if-eqz v0, :cond_140

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->s:Ljava/util/List;

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    goto :goto_fe

    :cond_140
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->s:Ljava/util/List;

    if-eqz v0, :cond_155

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_155

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_155
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->r:Ljava/util/List;

    if-eqz v0, :cond_fe

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_fe

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_fe

    :cond_16b
    const-string v0, "1"

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->ai:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_174
    .catchall {:try_start_b1 .. :try_end_174} :catchall_ae

    move-result v0

    if-nez v0, :cond_1d6

    :try_start_177
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->F:Lorg/json/JSONArray;

    if-eqz v0, :cond_1f1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->F:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_182
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->F:Lorg/json/JSONArray;

    if-eqz v0, :cond_1f6

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->F:Lorg/json/JSONArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_18d
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->F:Lorg/json/JSONArray;

    if-eqz v0, :cond_1fb

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->F:Lorg/json/JSONArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_198
    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->C()Z

    move-result v0

    if-eqz v0, :cond_200

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->F:Lorg/json/JSONArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1a5
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    if-eqz v0, :cond_1d6

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1b3
    :goto_1b3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/model/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/model/c;->c()I

    move-result v1

    if-eqz v1, :cond_1b3

    const-string v1, ""

    invoke-interface {v0}, Lcom/unionpay/mobile/android/model/c;->c()I

    move-result v7

    sparse-switch v7, :sswitch_data_288

    :goto_1ce
    invoke-interface {v0, v1}, Lcom/unionpay/mobile/android/model/c;->a(Ljava/lang/String;)V
    :try_end_1d1
    .catch Lorg/json/JSONException; {:try_start_177 .. :try_end_1d1} :catch_1d2
    .catchall {:try_start_177 .. :try_end_1d1} :catchall_ae

    goto :goto_1b3

    :catch_1d2
    move-exception v0

    :try_start_1d3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1d6
    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->bh:Z

    if-nez v0, :cond_1e2

    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->av:Z

    if-eqz v0, :cond_1e2

    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->aw:Z

    if-nez v0, :cond_20d

    :cond_1e2
    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->bg:Z

    if-eqz v0, :cond_20d

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ak:Ljava/lang/String;

    const-string v1, "fail"

    invoke-direct {p0, v0, v1}, Lcom/unionpay/mobile/android/nocard/views/l;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ef
    .catchall {:try_start_1d3 .. :try_end_1ef} :catchall_ae

    goto/16 :goto_51

    :cond_1f1
    :try_start_1f1
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v0, Lcom/unionpay/mobile/android/languages/c;->ak:Ljava/lang/String;

    goto :goto_182

    :cond_1f6
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v4, v0, Lcom/unionpay/mobile/android/languages/c;->aj:Ljava/lang/String;

    goto :goto_18d

    :cond_1fb
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v0, Lcom/unionpay/mobile/android/languages/c;->ai:Ljava/lang/String;

    goto :goto_198

    :cond_200
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v5, v0, Lcom/unionpay/mobile/android/languages/c;->al:Ljava/lang/String;
    :try_end_204
    .catch Lorg/json/JSONException; {:try_start_1f1 .. :try_end_204} :catch_1d2
    .catchall {:try_start_1f1 .. :try_end_204} :catchall_ae

    goto :goto_1a5

    :sswitch_205
    move-object v1, v2

    goto :goto_1ce

    :sswitch_207
    move-object v1, v3

    goto :goto_1ce

    :sswitch_209
    move-object v1, v4

    goto :goto_1ce

    :sswitch_20b
    move-object v1, v5

    goto :goto_1ce

    :cond_20d
    :try_start_20d
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->v()Z

    move-result v0

    if-eqz v0, :cond_235

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->au:Z

    if-eqz v0, :cond_235

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->ax:Z

    if-nez v0, :cond_235

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->ay:Z

    if-nez v0, :cond_235

    iget v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->t:I

    iget v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->x:I

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/l;->u:Ljava/lang/String;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->v:Ljava/lang/String;

    iget v5, p0, Lcom/unionpay/mobile/android/nocard/views/l;->y:I

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/l;->w:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/unionpay/mobile/android/nocard/views/l;->a(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_235
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->as:Z

    if-eqz v0, :cond_255

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->ay:Z

    if-eqz v0, :cond_255

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->at:Z

    if-eqz v0, :cond_255

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/l;->d(I)V

    :goto_24c
    const-string v0, "uppay"

    const-string v1, "showContentView() ---"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_51

    :cond_255
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->az:Z

    if-eqz v0, :cond_27e

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->au:Z

    if-eqz v0, :cond_27e

    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->bf:Z

    if-eqz v0, :cond_27e

    sget-object v0, Lcom/unionpay/mobile/android/model/b;->aW:Ljava/util/List;

    if-eqz v0, :cond_271

    sget-object v0, Lcom/unionpay/mobile/android/model/b;->aW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_27e

    :cond_271
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->bq:Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/unionpay/mobile/android/nocard/views/l;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_24c

    :cond_27e
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->G:Lcom/unionpay/mobile/android/model/e;

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/nocard/views/l;->a(ILcom/unionpay/mobile/android/model/e;)V
    :try_end_284
    .catchall {:try_start_20d .. :try_end_284} :catchall_ae

    goto :goto_24c

    :cond_285
    move v2, v0

    goto/16 :goto_44

    :sswitch_data_288
    .sparse-switch
        0x1 -> :sswitch_20b
        0x4 -> :sswitch_209
        0x8 -> :sswitch_207
        0x10 -> :sswitch_205
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/m;

    invoke-direct {v1, p0, p3}, Lcom/unionpay/mobile/android/nocard/views/m;-><init>(Lcom/unionpay/mobile/android/nocard/views/l;Ljava/lang/String;)V

    new-instance v2, Lcom/unionpay/mobile/android/nocard/views/n;

    invoke-direct {v2, p0}, Lcom/unionpay/mobile/android/nocard/views/n;-><init>(Lcom/unionpay/mobile/android/nocard/views/l;)V

    const-string v0, "01"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->ae:Ljava/lang/String;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->af:Ljava/lang/String;

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->ag:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2b
    return-void

    :cond_2c
    const/4 v0, 0x1

    goto :goto_13

    :cond_2e
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->Y:Ljava/lang/String;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->af:Ljava/lang/String;

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->ag:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method private b(ILjava/lang/String;)V
    .registers 5

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iput-object p2, v0, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    :cond_e
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->z:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/l;->c(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/nocard/views/l;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iput-object p2, v0, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    :cond_e
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->z:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/unionpay/mobile/android/nocard/views/l;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private f(I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_b

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v0, v1, Lcom/unionpay/mobile/android/model/b;->ar:Z

    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a
.end method


# virtual methods
.method public final A()V
    .registers 2

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->z:Landroid/widget/ProgressBar;

    return-void
.end method

.method public B()V
    .registers 2

    const-string v0, "000"

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/l;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    return-void
.end method

.method public final a(I[B)V
    .registers 9

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->j()V

    if-eqz p1, :cond_a

    invoke-direct {p0, p1, v4}, Lcom/unionpay/mobile/android/nocard/views/l;->b(ILjava/lang/String;)V

    :cond_a
    const-string v0, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "status = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_35

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    move v0, v1

    :cond_2e
    if-nez v0, :cond_36

    const/16 v0, 0x9

    invoke-direct {p0, v0, v4}, Lcom/unionpay/mobile/android/nocard/views/l;->b(ILjava/lang/String;)V

    :cond_35
    :goto_35
    return-void

    :cond_36
    invoke-static {p2}, Lcom/unionpay/mobile/android/utils/p;->a([B)Z

    move-result v0

    if-ne v0, v1, :cond_9b

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UPPay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UPPayPluginEx.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uppay"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "apk path:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->d:Landroid/content/Context;

    check-cast v0, Lcom/unionpay/mobile/android/plugin/BaseActivity;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_35

    :cond_9b
    const/16 v0, 0x15

    invoke-direct {p0, v0, v4}, Lcom/unionpay/mobile/android/nocard/views/l;->b(ILjava/lang/String;)V

    goto :goto_35
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 13

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    const-string v0, "uppay"

    const-string v1, "init.parserParamJsonObj() +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_10

    invoke-virtual {p0, v10}, Lcom/unionpay/mobile/android/nocard/views/l;->b(I)V

    :goto_f
    return-void

    :cond_10
    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->B:I

    packed-switch v0, :pswitch_data_4de

    :goto_15
    const-string v0, "uppay"

    const-string v1, "init.parserParamJsonObj() ---"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :pswitch_1d
    const-string v0, "secret"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sec_sign"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->e(Ljava/lang/String;)Z

    const-string v0, "talking_data_flag"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unionpay/mobile/android/global/a;->L:Z

    :cond_41
    const-string v0, "mer_id"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "002"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_50

    move-object v0, v1

    :cond_50
    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget-boolean v3, v3, Lcom/unionpay/mobile/android/plugin/c;->d:Z

    if-nez v3, :cond_5a

    const-string v0, "001"

    :cond_5a
    sget-boolean v3, Lcom/unionpay/mobile/android/global/a;->L:Z

    if-eqz v3, :cond_7b

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/l;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v5, v5, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v5, v5, Lcom/unionpay/mobile/android/plugin/c;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/unionpay/sdk/UPAgent;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/unionpay/sdk/UPAgent;->setReportUncaughtExceptions(Z)V

    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->a:Ljava/lang/String;

    const-wide/16 v4, 0x39

    invoke-static {v0, v4, v5}, Lcom/unionpay/sdk/UPAgent;->setAdditionalVersionNameAndCode(Ljava/lang/String;J)V

    :cond_7b
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->d:Landroid/content/Context;

    const-string v3, "tn"

    sget-object v4, Lcom/unionpay/mobile/android/utils/o;->a:[Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/String;

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v6, v6, Lcom/unionpay/mobile/android/model/b;->b:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v0, v3, v4, v5}, Lcom/unionpay/mobile/android/nocard/views/l;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->d:Landroid/content/Context;

    const-string v3, "merch_id"

    sget-object v4, Lcom/unionpay/mobile/android/utils/o;->b:[Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/String;

    aput-object v1, v5, v2

    invoke-static {v0, v3, v4, v5}, Lcom/unionpay/mobile/android/nocard/views/l;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->d:Landroid/content/Context;

    const-string v1, "package_version"

    sget-object v3, Lcom/unionpay/mobile/android/utils/o;->c:[Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/String;

    sget-object v5, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v5, v5, Lcom/unionpay/mobile/android/languages/c;->a:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v0, v1, v3, v4}, Lcom/unionpay/mobile/android/nocard/views/l;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "upgrade_info"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "type"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->A:Ljava/lang/String;

    const-string v1, "desc"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "url"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->A:Ljava/lang/String;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d5

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->A:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v4}, Lcom/unionpay/mobile/android/nocard/views/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_d5
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "title"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "init_button"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->g:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "order"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->e:Lorg/json/JSONArray;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move v1, v2

    :goto_f9
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->e:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_122

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->e:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/i;->b(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11e

    check-cast v0, Lorg/json/JSONObject;

    const-string v6, "label"

    invoke-static {v0, v6}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "value"

    invoke-static {v0, v7}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f9

    :cond_122
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->d:Landroid/content/Context;

    const-string v1, "basic_info"

    sget-object v6, Lcom/unionpay/mobile/android/utils/o;->d:[Ljava/lang/String;

    new-array v7, v9, [Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-static {v0, v1, v6, v7}, Lcom/unionpay/mobile/android/nocard/views/l;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "risk_info"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->f:Lorg/json/JSONObject;

    const-string v0, "cards"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_156

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_156

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->r:Ljava/util/List;

    :cond_156
    move v1, v2

    :goto_157
    if-eqz v5, :cond_18b

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_18b

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0, v9}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0, v10}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Lcom/unionpay/mobile/android/model/a;

    invoke-direct {v8, v6, v7, v0, v2}, Lcom/unionpay/mobile/android/model/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->r:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_157

    :cond_18b
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "bank_url"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "input_info"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->o:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "account_info"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->q:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "other_card_info"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->r:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "user_id"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const-string v1, "sid"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const-string v1, "secret"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->d(Ljava/lang/String;)V

    const-string v0, "secret"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e3

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iput-object v0, v1, Lcom/unionpay/mobile/android/model/b;->i:Ljava/lang/String;

    :cond_1e3
    const-string v0, "uid"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f6

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/PreferenceUtils;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1f6
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->w()Z

    move-result v0

    if-eqz v0, :cond_27b

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->v()Z

    move-result v0

    if-eqz v0, :cond_232

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "kalefu_info"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->s:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "kalefu_button_label"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->t:Ljava/lang/String;

    if-eqz v0, :cond_226

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_232

    :cond_226
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    if-eqz v0, :cond_232

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->am:Ljava/lang/String;

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->t:Ljava/lang/String;

    :cond_232
    const-string v0, "cards_desc"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->F:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "trade_privilege"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->ai:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "upcard_msg"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->ak:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iput v2, v0, Lcom/unionpay/mobile/android/model/b;->aj:I

    const-string v0, "upcard_support_type"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v5, v5, Lcom/unionpay/mobile/android/model/b;->ai:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_274

    if-eqz v0, :cond_274

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_274

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v0, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/unionpay/mobile/android/model/b;->aj:I

    :cond_274
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget v0, v0, Lcom/unionpay/mobile/android/model/b;->aj:I

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/l;->f(I)Z

    :cond_27b
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "ad"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->am:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "pay_tip"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->ao:Ljava/lang/String;

    const-string v0, "sup_pay_method"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2af

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v5, "01"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/unionpay/mobile/android/model/b;->ax:Z

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v5, "001"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/unionpay/mobile/android/model/b;->ay:Z

    :cond_2af
    const-string v0, "default_pay_type"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c5

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v5, "0501"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/unionpay/mobile/android/model/b;->az:Z

    :cond_2c5
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "find_pwd_url"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->ap:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "reg_url"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->T:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "1"

    const-string v5, "sup_nfc"

    invoke-static {p1, v5}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->at:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "1"

    const-string v5, "sup_hce"

    invoke-static {p1, v5}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->au:Z

    const-string v0, "1"

    const-string v1, "sup_samsung_pay"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/unionpay/mobile/android/model/b;->av:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "hce_introduction_url"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->v()Z

    move-result v0

    if-eqz v0, :cond_34d

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->at:Z

    if-eqz v0, :cond_34d

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->ax:Z

    if-nez v0, :cond_34d

    const-string v0, "nfc_title"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_333

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iput-object v0, v1, Lcom/unionpay/mobile/android/languages/c;->bo:Ljava/lang/String;

    :cond_333
    const-string v0, "nfc_button"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_34d

    const-string v1, "label"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_34d

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34d

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iput-object v0, v1, Lcom/unionpay/mobile/android/languages/c;->bp:Ljava/lang/String;

    :cond_34d
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->v()Z

    move-result v0

    if-eqz v0, :cond_3d7

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->au:Z

    if-eqz v0, :cond_3d7

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->ax:Z

    if-nez v0, :cond_3d7

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->ay:Z

    if-nez v0, :cond_3d7

    const-string v0, "hce_title"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hce_page_size"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->t:I

    const-string v1, "hce_button"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "label"

    invoke-static {v1, v5}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "htmlLabel"

    invoke-static {v1, v6}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_461

    sget-object v7, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iput-object v0, v7, Lcom/unionpay/mobile/android/languages/c;->bq:Ljava/lang/String;

    :goto_38f
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_467

    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iput-object v6, v0, Lcom/unionpay/mobile/android/languages/c;->br:Ljava/lang/String;

    :goto_399
    const-string v0, "action"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->u:Ljava/lang/String;

    const-string v0, "reserved"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->v:Ljava/lang/String;

    const-string v0, "iss_ins_code"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->w:Ljava/lang/String;

    const-string v0, "hce_bank_timeout"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->x:I

    const-string v0, "hce_concurrent_count"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->y:I

    const-string v0, "hce_pay_timeout"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_46d

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iput v0, v1, Lcom/unionpay/mobile/android/model/b;->aY:I

    :goto_3cd
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, "no_hce_card_msg"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->bc:Ljava/lang/String;

    :cond_3d7
    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v5, Lcom/unionpay/mobile/android/model/b;->k:Ljava/util/HashMap;

    const-string v0, "f55"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v0, "order_amount"

    invoke-static {v6, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v7, v5, Lcom/unionpay/mobile/android/model/b;->k:Ljava/util/HashMap;

    const-string v8, "trans_amt"

    if-eqz v1, :cond_475

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_475

    move-object v0, v1

    :goto_3f9
    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/unionpay/mobile/android/utils/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/unionpay/mobile/android/model/b;->bj:Ljava/lang/String;

    const-string v0, "order_currency"

    invoke-static {v6, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v7, v5, Lcom/unionpay/mobile/android/model/b;->k:Ljava/util/HashMap;

    const-string v8, "trans currcy code"

    if-eqz v1, :cond_478

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_478

    move-object v0, v1

    :goto_415
    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v5, Lcom/unionpay/mobile/android/model/b;->bk:Ljava/lang/String;

    const-string v0, "trans_type"

    invoke-static {v6, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v5, Lcom/unionpay/mobile/android/model/b;->k:Ljava/util/HashMap;

    const-string v7, "trans_type"

    if-eqz v0, :cond_47b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_47b

    :goto_42c
    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mer_name"

    invoke-static {v6, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v5, Lcom/unionpay/mobile/android/model/b;->k:Ljava/util/HashMap;

    const-string v5, "mer_name"

    if-eqz v0, :cond_47e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_47e

    :goto_441
    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->ay:Z

    if-eqz v0, :cond_450

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v1, ""

    iput-object v1, v0, Lcom/unionpay/mobile/android/model/b;->p:Ljava/lang/String;

    :cond_450
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->A:Ljava/lang/String;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_481

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->A:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v4}, Lcom/unionpay/mobile/android/nocard/views/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_461
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iput-object v5, v0, Lcom/unionpay/mobile/android/languages/c;->bq:Ljava/lang/String;

    goto/16 :goto_38f

    :cond_467
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iput-object v5, v0, Lcom/unionpay/mobile/android/languages/c;->br:Ljava/lang/String;

    goto/16 :goto_399

    :cond_46d
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    const/16 v1, 0x1388

    iput v1, v0, Lcom/unionpay/mobile/android/model/b;->aY:I

    goto/16 :goto_3cd

    :cond_475
    const-string v0, "000000000000"

    goto :goto_3f9

    :cond_478
    const-string v0, "0156"

    goto :goto_415

    :cond_47b
    const-string v0, "00"

    goto :goto_42c

    :cond_47e
    const-string v0, ""

    goto :goto_441

    :cond_481
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/l;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a2

    iput v10, p0, Lcom/unionpay/mobile/android/nocard/views/l;->B:I

    const-string v0, "\"user_id\":\"%s\""

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->p:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->m(Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_4a2
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->x()V

    goto/16 :goto_15

    :pswitch_4a7
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->c(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;)Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->b(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;)I

    move-result v0

    if-eqz v0, :cond_4b9

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/l;->b(I)V

    goto/16 :goto_15

    :cond_4b9
    const-string v0, "userId"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d2

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->d:Landroid/content/Context;

    const-string v3, "_login"

    sget-object v4, Lcom/unionpay/mobile/android/utils/o;->e:[Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v1, v3, v4, v5}, Lcom/unionpay/mobile/android/nocard/views/l;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4d2
    invoke-static {p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/model/e;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->G:Lcom/unionpay/mobile/android/model/e;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->x()V

    goto/16 :goto_15

    nop

    :pswitch_data_4de
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_4a7
    .end packed-switch
.end method

.method public final a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean p1, v0, Lcom/unionpay/mobile/android/model/b;->as:Z

    return-void
.end method

.method public final b(I)V
    .registers 5

    const-string v0, "uppay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "doErrHappended() +++"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "fail"

    invoke-direct {p0, p1, v0}, Lcom/unionpay/mobile/android/nocard/views/l;->b(ILjava/lang/String;)V

    const-string v0, "uppay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "doErrHappended() ---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/unionpay/mobile/android/utils/q;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p0}, Lcom/unionpay/mobile/android/utils/q;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unionpay/mobile/android/utils/q$a;)V

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/utils/q;->a()V

    return-void
.end method

.method protected final d()V
    .registers 10

    const/4 v8, 0x1

    const/16 v7, 0xe

    const/4 v6, -0x1

    const/4 v5, -0x2

    invoke-super {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->d()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v1, 0xbc0

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/resource/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/l;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/unionpay/mobile/android/global/a;->I:I

    div-int/lit8 v0, v0, 0x2

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v3, 0x403

    invoke-virtual {v2, v3, v0, v6}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v0, Lcom/unionpay/mobile/android/global/a;->j:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const v0, 0x3e99999a    # 0.3f

    sget v3, Lcom/unionpay/mobile/android/global/a;->t:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v1, v2}, Lcom/unionpay/mobile/android/nocard/views/l;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x1010287

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->z:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x3

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->d:I

    mul-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->z:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mobile/android/nocard/views/l;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v2, Lcom/unionpay/mobile/android/global/a;->b:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/nocard/views/l;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/l;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->B:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-wide v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->H:J

    invoke-virtual {v0, v2, v3}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(J)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v0, p0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine$a;)V

    return-void
.end method

.method public final l()V
    .registers 1

    return-void
.end method

.method protected t()V
    .registers 1

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->u()V

    return-void
.end method

.method public final u()V
    .registers 13

    const-wide/16 v10, -0x1

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->K:Z

    if-nez v0, :cond_66

    iput-boolean v5, p0, Lcom/unionpay/mobile/android/nocard/views/l;->K:Z

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->y()V

    iput-boolean v2, p0, Lcom/unionpay/mobile/android/nocard/views/l;->E:Z

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/l;->I:Landroid/app/Activity;

    iget-boolean v8, p0, Lcom/unionpay/mobile/android/nocard/views/l;->J:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a()V

    :try_start_19
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->D:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/plugin/c;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_22} :catch_67

    move-result v3

    :goto_23
    const-string v0, "com.unionpay.uppay"

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/l;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/unionpay/mobile/android/utils/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    move v4, v5

    :goto_32
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v6, v6, Lcom/unionpay/mobile/android/model/b;->c:Z

    if-eqz v6, :cond_3b

    move v2, v5

    :cond_3b
    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v5, v5, Lcom/unionpay/mobile/android/model/b;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget v6, v6, Lcom/unionpay/mobile/android/model/b;->aJ:I

    iget-object v7, p0, Lcom/unionpay/mobile/android/nocard/views/l;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v7, v7, Lcom/unionpay/mobile/android/model/b;->b:Ljava/lang/String;

    invoke-static {v7}, Lcom/unionpay/mobile/android/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->initJNIEnv(Landroid/app/Activity;IIZLjava/lang/String;ILjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->H:J

    if-eqz v8, :cond_6c

    iget-wide v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->H:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6c

    iget-wide v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->H:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->B()V

    :cond_66
    :goto_66
    return-void

    :catch_67
    move-exception v0

    move v3, v2

    goto :goto_23

    :cond_6a
    move v4, v2

    goto :goto_32

    :cond_6c
    iget-wide v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->H:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_77

    const/4 v0, 0x7

    invoke-direct {p0, v0, v9}, Lcom/unionpay/mobile/android/nocard/views/l;->b(ILjava/lang/String;)V

    goto :goto_66

    :cond_77
    if-nez v8, :cond_66

    const/4 v0, 0x5

    invoke-direct {p0, v0, v9}, Lcom/unionpay/mobile/android/nocard/views/l;->b(ILjava/lang/String;)V

    goto :goto_66
.end method

.method public v()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public w()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final x()V
    .registers 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->A:Ljava/lang/String;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->k()V

    :goto_d
    return-void

    :cond_e
    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->C:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->E:Z

    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->D()V

    goto :goto_d
.end method

.method public y()V
    .registers 1

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->z()V

    return-void
.end method

.method protected final z()V
    .registers 2

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/l;->C:I

    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/l;->D()V

    return-void
.end method
