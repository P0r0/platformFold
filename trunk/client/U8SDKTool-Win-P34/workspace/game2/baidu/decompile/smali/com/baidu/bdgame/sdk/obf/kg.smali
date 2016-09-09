.class public Lcom/baidu/bdgame/sdk/obf/kg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/kg$3;,
        Lcom/baidu/bdgame/sdk/obf/kg$a;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/ct;

.field private b:Lcom/baidu/bdgame/sdk/obf/kk;

.field private c:Lcom/baidu/bdgame/sdk/obf/jz;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Lcom/baidu/bdgame/sdk/obf/ef;

.field private g:Lcom/baidu/bdgame/sdk/obf/kg$a;

.field private h:Lcom/baidu/bdgame/sdk/obf/mt;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/kk;Lcom/baidu/bdgame/sdk/obf/jz;Lcom/baidu/bdgame/sdk/obf/ef;ILjava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/16 v0, 0xb4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    .line 53
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/kg;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    .line 54
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/kg;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    .line 55
    if-le p5, v0, :cond_e

    move p5, v0

    .line 58
    :cond_e
    mul-int/lit16 v0, p5, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->d:J

    .line 59
    iput-object p6, p0, Lcom/baidu/bdgame/sdk/obf/kg;->e:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/baidu/bdgame/sdk/obf/kg;->f:Lcom/baidu/bdgame/sdk/obf/ef;

    .line 61
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/kg$a;

    invoke-direct {v0, p0, p7}, Lcom/baidu/bdgame/sdk/obf/kg$a;-><init>(Lcom/baidu/bdgame/sdk/obf/kg;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->g:Lcom/baidu/bdgame/sdk/obf/kg$a;

    .line 62
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->h:Lcom/baidu/bdgame/sdk/obf/mt;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/kg;)Lcom/baidu/bdgame/sdk/obf/ct;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/kg;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/kg;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/kg;->e()V

    .line 128
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    .line 131
    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kg$3;->a:[I

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/kk;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_11a

    .line 163
    const/16 v0, -0xbbb

    .line 164
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 165
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "bdp_passport_pay_submit"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 167
    :cond_33
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move v6, v0

    .line 171
    :goto_39
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/kh;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    new-instance v5, Lcom/baidu/bdgame/sdk/obf/kg$2;

    invoke-direct {v5, p0}, Lcom/baidu/bdgame/sdk/obf/kg$2;-><init>(Lcom/baidu/bdgame/sdk/obf/kg;)V

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/kh;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kk;Landroid/text/Spannable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/kh;->show()V

    .line 181
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "order"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/PayOrderInfo;

    .line 182
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1, v6, p2, v0}, Lcom/baidu/bdgame/sdk/obf/ct;->a(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 183
    return-void

    .line 134
    :pswitch_66
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 135
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "bdp_passport_pay"

    invoke-static {v3, v4}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 137
    :cond_82
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/kg;->c:Lcom/baidu/bdgame/sdk/obf/jz;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/jz;->c()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ec

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v5}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "bdp_paycenter_pay_result_notify_success_tip"

    invoke-static {v5, v6}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 143
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 144
    const/4 v4, -0x1

    if-eq v5, v4, :cond_e9

    .line 145
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "bdp_orange"

    invoke-static {v1, v7}, Lcom/baidu/bdgame/sdk/obf/lo;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v4, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v5

    const/16 v2, 0x21

    invoke-interface {v3, v4, v5, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_e9
    move v6, v0

    .line 148
    goto/16 :goto_39

    .line 149
    :cond_ec
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move v6, v0

    .line 151
    goto/16 :goto_39

    .line 155
    :pswitch_f4
    const/16 v0, -0xbba

    .line 156
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_112

    .line 157
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "bdp_passport_pay_fail"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 159
    :cond_112
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move v6, v0

    .line 160
    goto/16 :goto_39

    .line 131
    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_66
        :pswitch_f4
        :pswitch_f4
        :pswitch_f4
    .end packed-switch
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/kg;)Lcom/baidu/bdgame/sdk/obf/mt;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->h:Lcom/baidu/bdgame/sdk/obf/mt;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/kg;)J
    .registers 3

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->d:J

    return-wide v0
.end method

.method private d()V
    .registers 5

    .prologue
    .line 109
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "order"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/PayOrderInfo;

    .line 110
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kg;->e:Ljava/lang/String;

    .line 111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 112
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "bdp_passport_pay_submit"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 114
    :cond_30
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    const/16 v3, -0xbbb

    invoke-virtual {v2, v3, v1, v0}, Lcom/baidu/bdgame/sdk/obf/ct;->a(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 115
    return-void
.end method

.method private e()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 186
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->f:Lcom/baidu/bdgame/sdk/obf/ef;

    if-nez v0, :cond_6

    .line 222
    :cond_5
    :goto_5
    return-void

    .line 189
    :cond_6
    const-string v0, "BaiduPay"

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kg;->f:Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ef;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 191
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xd2

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    goto :goto_5

    .line 193
    :cond_28
    const-string v0, "AliPay"

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kg;->f:Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ef;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 195
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    goto :goto_5

    .line 197
    :cond_4a
    const-string v0, "WeixinWallet"

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kg;->f:Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ef;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 199
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xd6

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    goto :goto_5

    .line 201
    :cond_6c
    const-string v0, "QQWalletPay"

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kg;->f:Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ef;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 203
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xd8

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    goto/16 :goto_5

    .line 205
    :cond_8f
    const-string v0, "BankCardPay"

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kg;->f:Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ef;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 207
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xda

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    goto/16 :goto_5

    .line 209
    :cond_b2
    const-string v0, "QuickPay"

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kg;->f:Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ef;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 211
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xdc

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    goto/16 :goto_5

    .line 213
    :cond_d5
    const-string v0, "YiBaoCashCardPay"

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kg;->f:Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ef;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 215
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xde

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    goto/16 :goto_5

    .line 217
    :cond_f8
    const-string v0, "KubiPay"

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kg;->f:Lcom/baidu/bdgame/sdk/obf/ef;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ef;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 219
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xe0

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ch;->a(I)Lcom/baidu/bdgame/sdk/obf/ch;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Z)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    goto/16 :goto_5
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kk;->d:Lcom/baidu/bdgame/sdk/obf/kk;

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kk;->e:Lcom/baidu/bdgame/sdk/obf/kk;

    if-ne v0, v1, :cond_23

    .line 73
    :cond_1a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kg;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/kg;->a(Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_22
    return-void

    .line 75
    :cond_23
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/kg;->d()V

    .line 76
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->g:Lcom/baidu/bdgame/sdk/obf/kg$a;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/kg$a;->a()V

    goto :goto_22
.end method

.method public b()V
    .registers 8

    .prologue
    .line 88
    const/16 v6, -0xbbb

    .line 89
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 90
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_passport_pay_submit"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->e:Ljava/lang/String;

    .line 93
    :cond_22
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/kh;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kk;->c:Lcom/baidu/bdgame/sdk/obf/kk;

    new-instance v3, Landroid/text/SpannableString;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/kg;->e:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    new-instance v5, Lcom/baidu/bdgame/sdk/obf/kg$1;

    invoke-direct {v5, p0}, Lcom/baidu/bdgame/sdk/obf/kg$1;-><init>(Lcom/baidu/bdgame/sdk/obf/kg;)V

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/kh;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kk;Landroid/text/Spannable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/kh;->show()V

    .line 103
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "order"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/platformsdk/PayOrderInfo;

    .line 104
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/kg;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/kg;->e:Ljava/lang/String;

    invoke-virtual {v1, v6, v2, v0}, Lcom/baidu/bdgame/sdk/obf/ct;->a(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 105
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->g:Lcom/baidu/bdgame/sdk/obf/kg$a;

    if-eqz v0, :cond_9

    .line 227
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->g:Lcom/baidu/bdgame/sdk/obf/kg$a;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/kg$a;->b()V

    .line 229
    :cond_9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->h:Lcom/baidu/bdgame/sdk/obf/mt;

    if-eqz v0, :cond_12

    .line 230
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kg;->h:Lcom/baidu/bdgame/sdk/obf/mt;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/mt;->b()V

    .line 232
    :cond_12
    return-void
.end method
