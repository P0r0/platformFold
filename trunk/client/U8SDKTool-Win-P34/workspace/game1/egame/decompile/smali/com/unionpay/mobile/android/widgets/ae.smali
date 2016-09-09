.class public final Lcom/unionpay/mobile/android/widgets/ae;
.super Lcom/unionpay/mobile/android/widgets/z;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/widgets/ae$a;
    }
.end annotation


# instance fields
.field private n:Landroid/text/TextWatcher;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unionpay/mobile/android/widgets/ae$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/unionpay/mobile/android/widgets/z;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;B)V

    new-instance v0, Lcom/unionpay/mobile/android/widgets/af;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/widgets/af;-><init>(Lcom/unionpay/mobile/android/widgets/ae;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ae;->n:Landroid/text/TextWatcher;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ae;->o:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ae;->b:Lcom/unionpay/mobile/android/widgets/t;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ae;->n:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->a(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ae;->b:Lcom/unionpay/mobile/android/widgets/t;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->a(Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ae;->b:Lcom/unionpay/mobile/android/widgets/t;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->a(I)V

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/ae;->h:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ae;->b:Lcom/unionpay/mobile/android/widgets/t;

    invoke-virtual {v0, v5}, Lcom/unionpay/mobile/android/widgets/t;->setEnabled(Z)V

    :cond_35
    const-string v0, "regex"

    invoke-static {p3, v0}, Lcom/unionpay/mobile/android/utils/i;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_63

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ae;->o:Ljava/util/ArrayList;

    if-nez v0, :cond_48

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ae;->o:Ljava/util/ArrayList;

    :cond_48
    :goto_48
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_63

    invoke-static {v1, v5}, Lcom/unionpay/mobile/android/utils/i;->b(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_60

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ae;->o:Ljava/util/ArrayList;

    new-instance v3, Lcom/unionpay/mobile/android/widgets/ae$a;

    invoke-direct {v3, p0, v0}, Lcom/unionpay/mobile/android/widgets/ae$a;-><init>(Lcom/unionpay/mobile/android/widgets/ae;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_60
    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    :cond_63
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v0, v5, -0x2

    move v2, v1

    move v3, v0

    move v4, v1

    :goto_a
    if-ltz v3, :cond_24

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    rem-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_1d

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v6, v0, 0xa

    rem-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v6

    :cond_1d
    add-int/2addr v4, v0

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    :cond_24
    rem-int/lit8 v0, v4, 0xa

    if-nez v0, :cond_34

    const/16 v0, 0x30

    :goto_2a
    add-int/lit8 v2, v5, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v0, v2, :cond_3c

    const/4 v0, 0x1

    :goto_33
    return v0

    :cond_34
    rem-int/lit8 v0, v4, 0xa

    rsub-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    goto :goto_2a

    :cond_3c
    move v0, v1

    goto :goto_33
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/ae;->h:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/ae;->i()Ljava/lang/String;

    move-result-object v0

    :goto_8
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ae;->b:Lcom/unionpay/mobile/android/widgets/t;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/t;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public final b()Z
    .registers 10

    const/16 v8, 0x13

    const/16 v7, 0xd

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/ae;->h:Z

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return v1

    :cond_b
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/ae;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ae;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ae;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_72

    move v3, v2

    move v4, v2

    :goto_1d
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ae;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_72

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ae;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/widgets/ae$a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/ae$a;->a()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3b

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/ae$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    :cond_3b
    if-eqz v4, :cond_6e

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/ae$a;->c()Z

    move-result v3

    if-eqz v3, :cond_5e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/ae$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/ae;->b(Ljava/lang/String;)Z

    move-result v0

    :goto_5c
    move v1, v0

    goto :goto_a

    :cond_5e
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v7, v0, :cond_6c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v8, v0, :cond_6c

    move v0, v1

    goto :goto_5c

    :cond_6c
    move v0, v2

    goto :goto_5c

    :cond_6e
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1d

    :cond_72
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v7, v0, :cond_84

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v8, v0, :cond_84

    invoke-static {v5}, Lcom/unionpay/mobile/android/widgets/ae;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_84
    move v1, v2

    goto :goto_a
.end method

.method protected final d()Ljava/lang/String;
    .registers 2

    const-string v0, "_input_cardNO"

    return-object v0
.end method
