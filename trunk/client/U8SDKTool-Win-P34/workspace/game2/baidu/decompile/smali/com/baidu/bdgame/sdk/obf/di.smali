.class public Lcom/baidu/bdgame/sdk/obf/di;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/di$a;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/dd;

.field private b:Lcom/baidu/bdgame/sdk/obf/ct;

.field private c:Lcom/baidu/bdgame/sdk/obf/dh;

.field private d:Lcom/baidu/bdgame/sdk/obf/di$a;

.field private e:Lcom/baidu/bdgame/sdk/obf/cl;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/dd;Lcom/baidu/bdgame/sdk/obf/ct;)V
    .registers 3

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    .line 82
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/di;->b:Lcom/baidu/bdgame/sdk/obf/ct;

    .line 84
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/di;->f()V

    .line 85
    return-void
.end method

.method private a(J)J
    .registers 10

    .prologue
    const-wide/16 v4, 0x64

    .line 179
    rem-long v0, p1, v4

    .line 180
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    .line 181
    div-long v0, p1, v4

    mul-long/2addr v0, v4

    add-long p1, v0, v4

    .line 183
    :cond_f
    return-wide p1
.end method

.method private a(JJ)J
    .registers 10

    .prologue
    const-wide/16 v2, 0x64

    .line 173
    sub-long v0, p1, p3

    .line 174
    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/di;)V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/di;->j()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/di;Lcom/baidu/bdgame/sdk/obf/iy;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/di;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/di;Lcom/baidu/bdgame/sdk/obf/iy;J)V
    .registers 4

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/di;->a(Lcom/baidu/bdgame/sdk/obf/iy;J)V

    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/iy;)V
    .registers 4

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/di;->m()Lcom/baidu/bdgame/sdk/obf/jv;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/iy;->d()Lcom/baidu/bdgame/sdk/obf/jv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jv;->a(Lcom/baidu/bdgame/sdk/obf/jv;)Lcom/baidu/bdgame/sdk/obf/jv;

    .line 96
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/di;->k()V

    .line 97
    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/iy;J)V
    .registers 16

    .prologue
    const/4 v7, 0x2

    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 101
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->l()Landroid/app/Activity;

    move-result-object v1

    .line 102
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/iy;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ju;->a(D)J

    move-result-wide v2

    .line 103
    sub-long v4, v2, p2

    .line 106
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/iy;->a()Lcom/baidu/bdgame/sdk/obf/iy$a;

    move-result-object v0

    sget-object v6, Lcom/baidu/bdgame/sdk/obf/iy$a;->b:Lcom/baidu/bdgame/sdk/obf/iy$a;

    if-ne v0, v6, :cond_cc

    .line 107
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->E()Lcom/baidu/bdgame/sdk/obf/jt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jt;->a()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 109
    cmp-long v0, v4, v10

    if-nez v0, :cond_31

    .line 110
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/di;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 169
    :goto_30
    return-void

    .line 113
    :cond_31
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "bdp_paycenter_balance_voucher_pay_tips"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/iy;->b()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v3, v8

    invoke-static {v4, v5}, Lcom/baidu/bdgame/sdk/obf/ju;->b(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_51
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/di;->e:Lcom/baidu/bdgame/sdk/obf/cl;

    if-nez v2, :cond_79

    .line 149
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/cl;

    invoke-direct {v2, v1}, Lcom/baidu/bdgame/sdk/obf/cl;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/baidu/bdgame/sdk/obf/di;->e:Lcom/baidu/bdgame/sdk/obf/cl;

    .line 150
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/di;->e:Lcom/baidu/bdgame/sdk/obf/cl;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "bdp_tips"

    invoke-static {v1, v4}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/baidu/bdgame/sdk/obf/cl;->a(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/di;->e:Lcom/baidu/bdgame/sdk/obf/cl;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/di$2;

    invoke-direct {v2, p0, p1}, Lcom/baidu/bdgame/sdk/obf/di$2;-><init>(Lcom/baidu/bdgame/sdk/obf/di;Lcom/baidu/bdgame/sdk/obf/iy;)V

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/cl;->a(Lcom/baidu/bdgame/sdk/obf/cl$a;)V

    .line 166
    :cond_79
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/di;->e:Lcom/baidu/bdgame/sdk/obf/cl;

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/cl;->b(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->e:Lcom/baidu/bdgame/sdk/obf/cl;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cl;->show()V

    goto :goto_30

    .line 119
    :cond_84
    cmp-long v0, v4, v10

    if-nez v0, :cond_8c

    .line 120
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/di;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    goto :goto_30

    .line 123
    :cond_8c
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/baidu/bdgame/sdk/obf/di;->a(JJ)J

    move-result-wide v2

    .line 124
    invoke-direct {p0, p2, p3}, Lcom/baidu/bdgame/sdk/obf/di;->a(J)J

    move-result-wide v4

    .line 125
    cmp-long v0, v2, v10

    if-nez v0, :cond_af

    .line 126
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "bdp_paycenter_balance_voucher_pay_tips_1"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/baidu/bdgame/sdk/obf/ju;->b(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_51

    .line 130
    :cond_af
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v6, "bdp_paycenter_balance_voucher_pay_tips"

    invoke-static {v1, v6}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/baidu/bdgame/sdk/obf/ju;->b(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ju;->b(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v9

    invoke-virtual {v0, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_51

    .line 138
    :cond_cc
    cmp-long v0, v4, v10

    if-nez v0, :cond_d5

    .line 139
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/di;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    goto/16 :goto_30

    .line 142
    :cond_d5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "bdp_paycenter_voucher_pay_tips"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/iy;->b()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_51
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/di;)Lcom/baidu/bdgame/sdk/obf/dd;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    return-object v0
.end method

.method private b(I)V
    .registers 5

    .prologue
    .line 274
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/jt;->a(I)Lcom/baidu/bdgame/sdk/obf/jt;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ju;->a(Lcom/baidu/bdgame/sdk/obf/jt;)J

    move-result-wide v0

    .line 276
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/dd;->B()Lcom/baidu/bdgame/sdk/obf/jz;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/baidu/bdgame/sdk/obf/jz;->a(J)V

    .line 277
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/di;->j()V

    .line 278
    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/di;Lcom/baidu/bdgame/sdk/obf/iy;J)V
    .registers 4

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/di;->b(Lcom/baidu/bdgame/sdk/obf/iy;J)V

    return-void
.end method

.method private b(Lcom/baidu/bdgame/sdk/obf/iy;J)V
    .registers 12

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/di;->m()Lcom/baidu/bdgame/sdk/obf/jv;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/iy;->d()Lcom/baidu/bdgame/sdk/obf/jv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jv;->a(Lcom/baidu/bdgame/sdk/obf/jv;)Lcom/baidu/bdgame/sdk/obf/jv;

    .line 248
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->B()Lcom/baidu/bdgame/sdk/obf/jz;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/baidu/bdgame/sdk/obf/jz;->b(J)V

    .line 250
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->u()Lcom/baidu/bdgame/sdk/obf/fb;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/dd;->B()Lcom/baidu/bdgame/sdk/obf/jz;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/dd;->r()Lcom/baidu/bdgame/sdk/obf/dt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/dt;->f()Lcom/baidu/bdgame/sdk/obf/ef;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/dd;->J()Lcom/baidu/bdgame/sdk/obf/ka;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v5}, Lcom/baidu/bdgame/sdk/obf/dd;->K()Lcom/baidu/bdgame/sdk/obf/jv;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/bdgame/sdk/obf/di;->b:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/bdgame/sdk/obf/fb;->b(Lcom/baidu/bdgame/sdk/obf/dd;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/ef;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 257
    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/di;)Lcom/baidu/bdgame/sdk/obf/cl;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->e:Lcom/baidu/bdgame/sdk/obf/cl;

    return-object v0
.end method

.method private c(I)V
    .registers 4

    .prologue
    .line 338
    packed-switch p1, :pswitch_data_16

    .line 347
    :goto_3
    :pswitch_3
    return-void

    .line 343
    :pswitch_4
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->c:Lcom/baidu/bdgame/sdk/obf/dh;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dh;->i()Lcom/baidu/bdgame/sdk/obf/iy;

    move-result-object v0

    .line 344
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/di;->m()Lcom/baidu/bdgame/sdk/obf/jv;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/iy;->d()Lcom/baidu/bdgame/sdk/obf/jv;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/jv;->a(Lcom/baidu/bdgame/sdk/obf/jv;)Lcom/baidu/bdgame/sdk/obf/jv;

    goto :goto_3

    .line 338
    :pswitch_data_16
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private d(I)Lcom/baidu/bdgame/sdk/obf/jw;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 351
    packed-switch p1, :pswitch_data_8

    .line 357
    :goto_4
    :pswitch_4
    return-object v0

    .line 353
    :pswitch_5
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jw;->a:Lcom/baidu/bdgame/sdk/obf/jw;

    goto :goto_4

    .line 351
    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private i()V
    .registers 2

    .prologue
    .line 47
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/di$1;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/di$1;-><init>(Lcom/baidu/bdgame/sdk/obf/di;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->d:Lcom/baidu/bdgame/sdk/obf/di$a;

    .line 76
    return-void
.end method

.method private j()V
    .registers 8

    .prologue
    .line 222
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->B()Lcom/baidu/bdgame/sdk/obf/jz;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dd;->B()Lcom/baidu/bdgame/sdk/obf/jz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jz;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/jz;->b(J)V

    .line 224
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->u()Lcom/baidu/bdgame/sdk/obf/fb;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/dd;->B()Lcom/baidu/bdgame/sdk/obf/jz;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/dd;->r()Lcom/baidu/bdgame/sdk/obf/dt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/dt;->f()Lcom/baidu/bdgame/sdk/obf/ef;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/dd;->J()Lcom/baidu/bdgame/sdk/obf/ka;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v5}, Lcom/baidu/bdgame/sdk/obf/dd;->K()Lcom/baidu/bdgame/sdk/obf/jv;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/bdgame/sdk/obf/di;->b:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/bdgame/sdk/obf/fb;->a(Lcom/baidu/bdgame/sdk/obf/dd;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/ef;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 231
    return-void
.end method

.method private k()V
    .registers 7

    .prologue
    .line 234
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->B()Lcom/baidu/bdgame/sdk/obf/jz;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/dd;->B()Lcom/baidu/bdgame/sdk/obf/jz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jz;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/jz;->b(J)V

    .line 236
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->u()Lcom/baidu/bdgame/sdk/obf/fb;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/dd;->B()Lcom/baidu/bdgame/sdk/obf/jz;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/dd;->J()Lcom/baidu/bdgame/sdk/obf/ka;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/dd;->K()Lcom/baidu/bdgame/sdk/obf/jv;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/di;->b:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/fb;->a(Lcom/baidu/bdgame/sdk/obf/dd;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 242
    return-void
.end method

.method private l()Z
    .registers 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->c:Lcom/baidu/bdgame/sdk/obf/dh;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dh;->q()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->c:Lcom/baidu/bdgame/sdk/obf/dh;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dh;->q()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    .line 329
    :cond_12
    const/4 v0, 0x1

    .line 331
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private m()Lcom/baidu/bdgame/sdk/obf/jv;
    .registers 3

    .prologue
    .line 362
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->K()Lcom/baidu/bdgame/sdk/obf/jv;

    move-result-object v0

    if-nez v0, :cond_12

    .line 363
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/jv;

    invoke-direct {v1}, Lcom/baidu/bdgame/sdk/obf/jv;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/dd;->b(Lcom/baidu/bdgame/sdk/obf/jv;)V

    .line 365
    :cond_12
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->K()Lcom/baidu/bdgame/sdk/obf/jv;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/baidu/bdgame/sdk/obf/di$a;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->d:Lcom/baidu/bdgame/sdk/obf/di$a;

    if-nez v0, :cond_7

    .line 89
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/di;->i()V

    .line 91
    :cond_7
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->d:Lcom/baidu/bdgame/sdk/obf/di$a;

    return-object v0
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/ju;->a(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 271
    :goto_c
    return-void

    .line 269
    :cond_d
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/di;->b(I)V

    goto :goto_c
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ef;)V
    .registers 13

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/di;->g()J

    move-result-wide v8

    .line 304
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/di;->m()Lcom/baidu/bdgame/sdk/obf/jv;

    move-result-object v5

    .line 307
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/eh;->h(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ef;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->v()Lcom/baidu/bdgame/sdk/obf/jv;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 309
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->v()Lcom/baidu/bdgame/sdk/obf/jv;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/baidu/bdgame/sdk/obf/jv;->a(Lcom/baidu/bdgame/sdk/obf/jv;)Lcom/baidu/bdgame/sdk/obf/jv;

    .line 312
    :cond_25
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->c:Lcom/baidu/bdgame/sdk/obf/dh;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dh;->q()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/di;->c(I)V

    .line 314
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->u()Lcom/baidu/bdgame/sdk/obf/fb;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->B()Lcom/baidu/bdgame/sdk/obf/jz;

    move-result-object v2

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->J()Lcom/baidu/bdgame/sdk/obf/ka;

    move-result-object v4

    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/di;->l()Z

    move-result v6

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->c:Lcom/baidu/bdgame/sdk/obf/dh;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dh;->q()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/di;->d(I)Lcom/baidu/bdgame/sdk/obf/jw;

    move-result-object v7

    iget-object v10, p0, Lcom/baidu/bdgame/sdk/obf/di;->b:Lcom/baidu/bdgame/sdk/obf/ct;

    move-object v3, p1

    invoke-virtual/range {v1 .. v10}, Lcom/baidu/bdgame/sdk/obf/fb;->a(Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/ef;Lcom/baidu/bdgame/sdk/obf/ka;Lcom/baidu/bdgame/sdk/obf/jv;ZLcom/baidu/bdgame/sdk/obf/jw;JLcom/baidu/bdgame/sdk/obf/ct;)V

    .line 324
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->e:Lcom/baidu/bdgame/sdk/obf/cl;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->e:Lcom/baidu/bdgame/sdk/obf/cl;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cl;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 190
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->e:Lcom/baidu/bdgame/sdk/obf/cl;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cl;->a()V

    .line 192
    :cond_11
    return-void
.end method

.method public c()V
    .registers 1

    .prologue
    .line 197
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->H()Z

    move-result v0

    return v0
.end method

.method public e()Lcom/baidu/bdgame/sdk/obf/dh;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->c:Lcom/baidu/bdgame/sdk/obf/dh;

    return-object v0
.end method

.method public f()V
    .registers 10

    .prologue
    .line 210
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/dh;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/dh;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->c:Lcom/baidu/bdgame/sdk/obf/dh;

    .line 211
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/di;->c:Lcom/baidu/bdgame/sdk/obf/dh;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->E()Lcom/baidu/bdgame/sdk/obf/jt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jt;->c()J

    move-result-wide v2

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->B()Lcom/baidu/bdgame/sdk/obf/jz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jz;->d()J

    move-result-wide v4

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->E()Lcom/baidu/bdgame/sdk/obf/jt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jt;->b()Ljava/util/List;

    move-result-object v6

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->G()Z

    move-result v7

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->a:Lcom/baidu/bdgame/sdk/obf/dd;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dd;->p()Z

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/bdgame/sdk/obf/dh;->a(JJLjava/util/List;ZZ)V

    .line 217
    return-void
.end method

.method public g()J
    .registers 5

    .prologue
    .line 287
    const-wide/16 v0, 0x0

    .line 288
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/di;->c:Lcom/baidu/bdgame/sdk/obf/dh;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/dh;->q()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    .line 289
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->c:Lcom/baidu/bdgame/sdk/obf/dh;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dh;->f()J

    move-result-wide v0

    .line 293
    :cond_11
    :goto_11
    return-wide v0

    .line 290
    :cond_12
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/di;->c:Lcom/baidu/bdgame/sdk/obf/dh;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/dh;->q()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_11

    .line 291
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->c:Lcom/baidu/bdgame/sdk/obf/dh;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dh;->k()J

    move-result-wide v0

    goto :goto_11
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->c:Lcom/baidu/bdgame/sdk/obf/dh;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dh;->r()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/di;->c:Lcom/baidu/bdgame/sdk/obf/dh;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dh;->v()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
