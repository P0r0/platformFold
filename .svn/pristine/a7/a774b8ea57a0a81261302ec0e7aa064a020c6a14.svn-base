.class final Lcom/bbk/payment/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:I

.field private e:[C

.field private f:Ljava/lang/StringBuffer;

.field private g:I

.field private synthetic h:Lcom/bbk/payment/JCardActivity;


# direct methods
.method constructor <init>(Lcom/bbk/payment/JCardActivity;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/bbk/payment/z;->h:Lcom/bbk/payment/JCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/bbk/payment/z;->a:I

    iput v1, p0, Lcom/bbk/payment/z;->b:I

    iput-boolean v1, p0, Lcom/bbk/payment/z;->c:Z

    iput v1, p0, Lcom/bbk/payment/z;->d:I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/bbk/payment/z;->f:Ljava/lang/StringBuffer;

    iput v1, p0, Lcom/bbk/payment/z;->g:I

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 7

    const/16 v4, 0x20

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/bbk/payment/z;->c:Z

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/bbk/payment/z;->h:Lcom/bbk/payment/JCardActivity;

    invoke-static {v0}, Lcom/bbk/payment/JCardActivity;->d(Lcom/bbk/payment/JCardActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/bbk/payment/z;->d:I

    move v0, v1

    :goto_14
    iget-object v2, p0, Lcom/bbk/payment/z;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lt v0, v2, :cond_78

    move v0, v1

    move v2, v1

    :goto_1e
    iget-object v3, p0, Lcom/bbk/payment/z;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lt v2, v3, :cond_89

    iget v2, p0, Lcom/bbk/payment/z;->g:I

    if-le v0, v2, :cond_32

    iget v2, p0, Lcom/bbk/payment/z;->d:I

    iget v3, p0, Lcom/bbk/payment/z;->g:I

    sub-int/2addr v0, v3

    add-int/2addr v0, v2

    iput v0, p0, Lcom/bbk/payment/z;->d:I

    :cond_32
    iget-object v0, p0, Lcom/bbk/payment/z;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/bbk/payment/z;->e:[C

    iget-object v0, p0, Lcom/bbk/payment/z;->f:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/bbk/payment/z;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    iget-object v3, p0, Lcom/bbk/payment/z;->e:[C

    invoke-virtual {v0, v1, v2, v3, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    iget-object v0, p0, Lcom/bbk/payment/z;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/bbk/payment/z;->d:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_a3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/bbk/payment/z;->d:I

    :cond_5d
    :goto_5d
    iget-object v2, p0, Lcom/bbk/payment/z;->h:Lcom/bbk/payment/JCardActivity;

    invoke-static {v2}, Lcom/bbk/payment/JCardActivity;->d(Lcom/bbk/payment/JCardActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbk/payment/z;->h:Lcom/bbk/payment/JCardActivity;

    invoke-static {v0}, Lcom/bbk/payment/JCardActivity;->d(Lcom/bbk/payment/JCardActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    :try_start_70
    iget v2, p0, Lcom/bbk/payment/z;->d:I

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_75} :catch_aa

    :goto_75
    iput-boolean v1, p0, Lcom/bbk/payment/z;->c:Z

    :cond_77
    return-void

    :cond_78
    iget-object v2, p0, Lcom/bbk/payment/z;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_86

    iget-object v2, p0, Lcom/bbk/payment/z;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_14

    :cond_86
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_89
    const/4 v3, 0x4

    if-eq v2, v3, :cond_98

    const/16 v3, 0x9

    if-eq v2, v3, :cond_98

    const/16 v3, 0xe

    if-eq v2, v3, :cond_98

    const/16 v3, 0x13

    if-ne v2, v3, :cond_9f

    :cond_98
    iget-object v3, p0, Lcom/bbk/payment/z;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    :cond_9f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1e

    :cond_a3
    iget v2, p0, Lcom/bbk/payment/z;->d:I

    if-gez v2, :cond_5d

    iput v1, p0, Lcom/bbk/payment/z;->d:I

    goto :goto_5d

    :catch_aa
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_75
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/bbk/payment/z;->a:I

    iget-object v1, p0, Lcom/bbk/payment/z;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1a

    iget-object v1, p0, Lcom/bbk/payment/z;->f:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/bbk/payment/z;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_1a
    iput v0, p0, Lcom/bbk/payment/z;->g:I

    :goto_1c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_23

    return-void

    :cond_23
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_31

    iget v1, p0, Lcom/bbk/payment/z;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bbk/payment/z;->g:I

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/bbk/payment/z;->b:I

    iget v0, p0, Lcom/bbk/payment/z;->b:I

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/bbk/payment/z;->h:Lcom/bbk/payment/JCardActivity;

    invoke-static {v0}, Lcom/bbk/payment/JCardActivity;->c(Lcom/bbk/payment/JCardActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_16
    iget-object v0, p0, Lcom/bbk/payment/z;->f:Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lcom/bbk/payment/z;->b:I

    iget v1, p0, Lcom/bbk/payment/z;->a:I

    if-eq v0, v1, :cond_2e

    iget v0, p0, Lcom/bbk/payment/z;->b:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_2e

    iget-boolean v0, p0, Lcom/bbk/payment/z;->c:Z

    if-eqz v0, :cond_3b

    :cond_2e
    iput-boolean v2, p0, Lcom/bbk/payment/z;->c:Z

    :goto_30
    return-void

    :cond_31
    iget-object v0, p0, Lcom/bbk/payment/z;->h:Lcom/bbk/payment/JCardActivity;

    invoke-static {v0}, Lcom/bbk/payment/JCardActivity;->c(Lcom/bbk/payment/JCardActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_16

    :cond_3b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbk/payment/z;->c:Z

    goto :goto_30
.end method
