.class public Lcom/baidu/bdgame/sdk/obf/ac;
.super Lcom/baidu/bdgame/sdk/obf/cs;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/ac$b;,
        Lcom/baidu/bdgame/sdk/obf/ac$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/TextView;

.field private h:Ljava/lang/String;

.field private i:Lcom/baidu/bdgame/sdk/obf/ac$b;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ct;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ac$b;)V
    .registers 4

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cs;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 53
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ac;->h:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/ac;->i:Lcom/baidu/bdgame/sdk/obf/ac$b;

    .line 55
    return-void
.end method

.method private f()V
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ac;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 104
    :cond_20
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    :goto_26
    return-void

    .line 106
    :cond_27
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->f:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_26
.end method

.method private g()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 111
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ac;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ac;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    const-string v3, "[\u4e00-\u9fa5]{2,}"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 114
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_37

    .line 116
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ac;->k()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ac;->k()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_account_authenticate_wrong_name"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    .line 125
    :goto_36
    return v0

    .line 119
    :cond_37
    const-string v1, "^(\\d{15}$|^\\d{18}$|^\\d{17}(\\d|X|x))$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 120
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_59

    .line 122
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ac;->k()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ac;->k()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_account_authenticate_wrong_id"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    goto :goto_36

    .line 125
    :cond_59
    const/4 v0, 0x1

    goto :goto_36
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_view_controller_account_authenticate"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/lo;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 60
    const-string v0, "img_close"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->a:Landroid/widget/ImageView;

    .line 61
    const-string v0, "edt_real_name"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->b:Landroid/widget/EditText;

    .line 62
    const-string v0, "img_name_del"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->c:Landroid/widget/ImageView;

    .line 63
    const-string v0, "edt_id_card"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->d:Landroid/widget/EditText;

    .line 64
    const-string v0, "img_id_card_del"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->e:Landroid/widget/ImageView;

    .line 65
    const-string v0, "btn_submit"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->f:Landroid/widget/Button;

    .line 66
    const-string v0, "txt_tips"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->g:Landroid/widget/TextView;

    .line 67
    return-object v1
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 73
    const/16 v0, 0x45

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 77
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 82
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    :goto_37
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ac;->f()V

    .line 98
    return-void

    .line 84
    :cond_3b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->g:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 86
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ac;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v2

    .line 87
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 88
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 90
    array-length v4, v0

    :goto_6c
    if-ge v1, v4, :cond_89

    aget-object v5, v0, v1

    .line 91
    new-instance v6, Lcom/baidu/bdgame/sdk/obf/ac$a;

    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Lcom/baidu/bdgame/sdk/obf/ac$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    invoke-interface {v2, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v2, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    const/16 v8, 0x21

    invoke-virtual {v3, v6, v7, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    .line 94
    :cond_89
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_37
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->i:Lcom/baidu/bdgame/sdk/obf/ac$b;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/ac$b;->a()V

    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_2c

    .line 165
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    :goto_15
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_32

    .line 170
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    :goto_28
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ac;->f()V

    .line 175
    return-void

    .line 167
    :cond_2c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_15

    .line 172
    :cond_32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_28
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 157
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->a:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_e

    .line 131
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->i:Lcom/baidu/bdgame/sdk/obf/ac$b;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/ac$b;->a()V

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ac;->b(Landroid/os/Bundle;)Z

    .line 147
    :cond_d
    :goto_d
    return-void

    .line 133
    :cond_e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->c:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1a

    .line 134
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->b:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 135
    :cond_1a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->e:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_26

    .line 136
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 137
    :cond_26
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_d

    .line 138
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ac;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 140
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ac;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x46

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 142
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ac;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ac;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ac;->i:Lcom/baidu/bdgame/sdk/obf/ac$b;

    invoke-interface {v2, v0, v1}, Lcom/baidu/bdgame/sdk/obf/ac$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 160
    return-void
.end method
