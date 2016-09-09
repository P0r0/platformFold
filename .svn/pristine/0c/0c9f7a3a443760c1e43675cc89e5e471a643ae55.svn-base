.class public Lcom/baidu/bdgame/sdk/obf/gz;
.super Lcom/baidu/bdgame/sdk/obf/cs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/gz$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "bundle_key_binding_type"

.field public static final b:Ljava/lang/String; = "bundle_key_email_code"

.field public static final c:Ljava/lang/String; = "bundle_key_old_phone_no"

.field public static final d:Ljava/lang/String; = "bundle_key_old_phone_code"

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2


# instance fields
.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/TextView;

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Lcom/baidu/bdgame/sdk/obf/gz$a;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ct;)V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cs;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gz;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gz;Lcom/baidu/bdgame/sdk/obf/gz$a;)Lcom/baidu/bdgame/sdk/obf/gz$a;
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/gz;->x:Lcom/baidu/bdgame/sdk/obf/gz$a;

    return-object p1
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->m()V

    .line 310
    if-nez p1, :cond_9c

    .line 314
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->t:I

    packed-switch v0, :pswitch_data_a4

    .line 331
    const-string v2, "bdp_account_bind_phone_title"

    .line 332
    const-string v1, "bdp_account_bind_phone_success_tip"

    .line 333
    const-string v0, "bdp_account_bind_phone_success_remark"

    .line 336
    :goto_10
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->h()Landroid/os/Bundle;

    move-result-object v3

    .line 337
    if-nez v3, :cond_1b

    .line 338
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 340
    :cond_1b
    const-string v4, "bundle_key_title"

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/md;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 344
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/md;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 346
    :cond_3a
    const-string v2, "bundle_key_account"

    invoke-virtual {v3, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v2, "bundle_key_tip"

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v1, "bundle_key_remark"

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/nr;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->i()Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/nr;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    invoke-virtual {p0, v0, v3}, Lcom/baidu/bdgame/sdk/obf/gz;->b(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    .line 352
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_success"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/gz;->a(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 357
    :goto_84
    return-void

    .line 316
    :pswitch_85
    const-string v2, "bdp_account_bind_phone_title"

    .line 317
    const-string v1, "bdp_account_bind_phone_success_tip"

    .line 318
    const-string v0, "bdp_account_bind_phone_success_remark"

    goto :goto_10

    .line 321
    :pswitch_8c
    const-string v2, "bdp_account_bind_phone_title"

    .line 322
    const-string v1, "bdp_account_bind_phone_success_tip"

    .line 323
    const-string v0, "bdp_account_bind_phone_success_remark"

    goto/16 :goto_10

    .line 326
    :pswitch_94
    const-string v2, "bdp_account_bind_phone_new_title"

    .line 327
    const-string v1, "bdp_account_bind_phone_check_phone_success_tip"

    .line 328
    const-string v0, "bdp_account_bind_phone_check_phone_success_remark"

    goto/16 :goto_10

    .line 355
    :cond_9c
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_84

    .line 314
    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_85
        :pswitch_8c
        :pswitch_94
    .end packed-switch
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/gz;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/gz;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/gz;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/gz;)V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->f()V

    return-void
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/gz;)Lcom/baidu/bdgame/sdk/obf/gz$a;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->x:Lcom/baidu/bdgame/sdk/obf/gz$a;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/gz;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/gz;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->n:Landroid/widget/Button;

    return-object v0
.end method

.method private f()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 360
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/gz;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 363
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->r:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 371
    :goto_20
    return-void

    .line 366
    :cond_21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 367
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->r:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_20

    .line 370
    :cond_2d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->r:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_20
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/gz;)I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->t:I

    return v0
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/gz;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/bdgame/sdk/obf/gz;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/bdgame/sdk/obf/gz;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->p:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic k(Lcom/baidu/bdgame/sdk/obf/gz;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->q:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic l(Lcom/baidu/bdgame/sdk/obf/gz;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->v:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_view_controller_account_bind_phone"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 69
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_title"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->h:Landroid/widget/TextView;

    .line 70
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_back"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->i:Landroid/widget/TextView;

    .line 71
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_close"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->j:Landroid/widget/ImageView;

    .line 72
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_tip"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->k:Landroid/widget/TextView;

    .line 73
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "edt_phone_no"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->l:Landroid/widget/EditText;

    .line 74
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_phone_no_del"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->m:Landroid/widget/ImageView;

    .line 75
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "btn_get_verifycode"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->n:Landroid/widget/Button;

    .line 76
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_sent_tip"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->o:Landroid/widget/TextView;

    .line 77
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "edt_verifycode"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->p:Landroid/widget/EditText;

    .line 78
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "img_verifycode_del"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->q:Landroid/widget/ImageView;

    .line 79
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "btn_submit"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->r:Landroid/widget/Button;

    .line 80
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_new_tip"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->s:Landroid/widget/TextView;

    .line 81
    return-object v1
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->e()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 87
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gz$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gz$1;-><init>(Lcom/baidu/bdgame/sdk/obf/gz;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :goto_16
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gz$6;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gz$6;-><init>(Lcom/baidu/bdgame/sdk/obf/gz;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->l:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gz$7;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gz$7;-><init>(Lcom/baidu/bdgame/sdk/obf/gz;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->l:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gz$8;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gz$8;-><init>(Lcom/baidu/bdgame/sdk/obf/gz;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 138
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->l:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gz$9;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gz$9;-><init>(Lcom/baidu/bdgame/sdk/obf/gz;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 146
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->m:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gz$10;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gz$10;-><init>(Lcom/baidu/bdgame/sdk/obf/gz;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->n:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gz$11;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gz$11;-><init>(Lcom/baidu/bdgame/sdk/obf/gz;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->p:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gz$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gz$2;-><init>(Lcom/baidu/bdgame/sdk/obf/gz;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 219
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->p:Landroid/widget/EditText;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gz$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gz$3;-><init>(Lcom/baidu/bdgame/sdk/obf/gz;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 230
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->q:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gz$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gz$4;-><init>(Lcom/baidu/bdgame/sdk/obf/gz;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->r:Landroid/widget/Button;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gz$5;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/gz$5;-><init>(Lcom/baidu/bdgame/sdk/obf/gz;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->f()V

    .line 270
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/cs;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 271
    return-void

    .line 96
    :cond_81
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->i:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_16
.end method

.method protected a(ZLandroid/os/Bundle;)V
    .registers 8

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 275
    if-eqz p1, :cond_2b

    if-eqz p2, :cond_2b

    .line 276
    const-string v0, "bundle_key_binding_type"

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->t:I

    .line 277
    const-string v0, "bundle_key_email_code"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->u:Ljava/lang/String;

    .line 278
    const-string v0, "bundle_key_old_phone_no"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->v:Ljava/lang/String;

    .line 279
    const-string v0, "bundle_key_old_phone_code"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->w:Ljava/lang/String;

    .line 280
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->t:I

    packed-switch v0, :pswitch_data_80

    .line 300
    :cond_2b
    :goto_2b
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/cs;->a(ZLandroid/os/Bundle;)V

    .line 301
    return-void

    .line 282
    :pswitch_2f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_bind_phone_title"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 283
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2b

    .line 287
    :pswitch_49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_bind_phone_title"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 288
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2b

    .line 292
    :pswitch_63
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/gz;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_account_bind_phone_new_title"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 293
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/gz;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2b

    .line 280
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_49
        :pswitch_63
    .end packed-switch
.end method
