.class public Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/res/Resources;

.field private static b:Landroid/graphics/drawable/Drawable;

.field private static c:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    sput-object v0, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    sput-object v0, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v1, "drawable"

    const-string v2, "vivo_indicator_input_error"

    invoke-static {p0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v0, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v1, "drawable"

    const-string v2, "vivo_indicator_input_pass"

    invoke-static {p0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->c:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public static checkAccountNum(Landroid/content/Context;Landroid/widget/EditText;Z)Z
    .registers 9

    const/4 v3, 0x0

    const/16 v5, 0x32

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2f

    if-eqz p2, :cond_2f

    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_account_num_empty_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_2e
    return v0

    :cond_2f
    if-le v2, v5, :cond_53

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v3, "string"

    const-string v4, "vivo_account_num_formatmore_wrong"

    invoke-static {p0, v3, v4}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2e

    :cond_53
    const/4 v1, 0x3

    if-ge v2, v1, :cond_70

    if-eqz p2, :cond_6c

    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_account_num_formatless_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2e

    :cond_6c
    invoke-virtual {p1, v3, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2e

    :cond_70
    const/4 v0, 0x1

    goto :goto_2e
.end method

.method public static checkEmail(Landroid/content/Context;Landroid/widget/EditText;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1a
    if-nez v1, :cond_1f

    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    move v1, v0

    goto :goto_1a

    :cond_1f
    const/16 v3, 0x28

    if-gt v1, v3, :cond_1c

    const-string v1, "@"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "^[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$"

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1c
.end method

.method public static checkEmail(Landroid/content/Context;Landroid/widget/EditText;Z)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->computeStringLength(Ljava/lang/CharSequence;)I

    move-result v2

    if-nez v2, :cond_2d

    if-eqz p2, :cond_2d

    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_email_empty_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_2c
    return v0

    :cond_2d
    const/16 v3, 0x32

    if-le v2, v3, :cond_45

    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_email_formatmore_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2c

    :cond_45
    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6f

    const-string v2, "^[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_89

    if-eqz p2, :cond_6b

    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_email_format_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2c

    :cond_6b
    invoke-virtual {p1, v4, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2c

    :cond_6f
    if-eqz p2, :cond_85

    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_email_format_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2c

    :cond_85
    invoke-virtual {p1, v4, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2c

    :cond_89
    sget-object v0, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v4, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    goto :goto_2c
.end method

.method public static checkIMEI(Landroid/content/Context;Landroid/widget/EditText;ZLjava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->computeStringLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_1e

    if-eqz p2, :cond_1e

    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p3, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_1d
    return v0

    :cond_1e
    const/16 v2, 0xf

    if-le v1, v2, :cond_36

    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_imei_formatmore_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    :cond_36
    const/4 v0, 0x0

    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    goto :goto_1d
.end method

.method public static checkMobileNumber(Landroid/content/Context;Landroid/widget/EditText;)Z
    .registers 9

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->computeStringLength(Ljava/lang/CharSequence;)I

    move-result v4

    if-nez v4, :cond_18

    move v0, v1

    :goto_17
    return v0

    :cond_18
    const/16 v0, 0xb

    if-ne v4, v0, :cond_24

    const-string v0, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    :cond_24
    move v0, v1

    goto :goto_17

    :cond_26
    move v2, v1

    move v0, v1

    :goto_28
    if-lt v2, v4, :cond_2e

    if-eq v0, v4, :cond_3f

    move v0, v1

    goto :goto_17

    :cond_2e
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_3c

    const/16 v6, 0x39

    if-gt v5, v6, :cond_3c

    add-int/lit8 v0, v0, 0x1

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3f
    const/4 v0, 0x1

    goto :goto_17
.end method

.method public static checkMobileNumber(Landroid/content/Context;Landroid/widget/EditText;Z)Z
    .registers 11

    const/4 v1, 0x0

    const/4 v7, 0x0

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->computeStringLength(Ljava/lang/CharSequence;)I

    move-result v4

    if-nez v4, :cond_32

    if-eqz p2, :cond_2e

    sget-object v0, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_phone_num_empty_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_2c
    move v0, v1

    :goto_2d
    return v0

    :cond_2e
    invoke-virtual {p1, v7, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2c

    :cond_32
    const/16 v0, 0xb

    if-ne v4, v0, :cond_3e

    const-string v0, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_59

    :cond_3e
    if-eqz p2, :cond_55

    sget-object v0, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_phone_num_format_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_53
    move v0, v1

    goto :goto_2d

    :cond_55
    invoke-virtual {p1, v7, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_53

    :cond_59
    move v2, v1

    move v0, v1

    :goto_5b
    if-lt v2, v4, :cond_76

    if-eq v0, v4, :cond_8b

    if-eqz p2, :cond_87

    sget-object v0, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_phone_num_format_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_74
    move v0, v1

    goto :goto_2d

    :cond_76
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_84

    const/16 v6, 0x39

    if-gt v5, v6, :cond_84

    add-int/lit8 v0, v0, 0x1

    :cond_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    :cond_87
    invoke-virtual {p1, v7, v7}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_74

    :cond_8b
    sget-object v0, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v7, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    goto :goto_2d
.end method

.method public static checkPassword(Landroid/content/Context;Landroid/widget/EditText;Z)Z
    .registers 7

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->computeStringLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_2d

    if-eqz p2, :cond_2d

    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_password_empty_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_2c
    return v0

    :cond_2d
    const/16 v2, 0x10

    if-le v1, v2, :cond_45

    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_password_formatmore_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2c

    :cond_45
    const/4 v2, 0x6

    if-ge v1, v2, :cond_62

    if-eqz p2, :cond_5e

    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_password_formatless_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2c

    :cond_5e
    invoke-virtual {p1, v3, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2c

    :cond_62
    const/4 v0, 0x1

    goto :goto_2c
.end method

.method public static checkPhoneEmail(Landroid/content/Context;Landroid/widget/EditText;Z)Z
    .registers 6

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->computeStringLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_2c

    if-eqz p2, :cond_2c

    sget-object v0, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v1, "string"

    const-string v2, "vivo_username_empty_wrong"

    invoke-static {p0, v1, v2}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    :goto_2b
    return v0

    :cond_2c
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {p0, p1, p2}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->checkEmail(Landroid/content/Context;Landroid/widget/EditText;Z)Z

    move-result v0

    goto :goto_2b

    :cond_39
    invoke-static {p0, p1, p2}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->checkMobileNumber(Landroid/content/Context;Landroid/widget/EditText;Z)Z

    move-result v0

    goto :goto_2b
.end method

.method public static checkPhoneNum(Landroid/content/Context;Landroid/widget/EditText;Z)Z
    .registers 7

    const/16 v3, 0xb

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->computeStringLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_2c

    if-eqz p2, :cond_2b

    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_phone_num_empty_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_2b
    :goto_2b
    return v0

    :cond_2c
    if-ge v1, v3, :cond_48

    if-eqz p2, :cond_44

    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_phone_num_format_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2b

    :cond_44
    invoke-virtual {p1, v2, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2b

    :cond_48
    if-le v1, v3, :cond_5e

    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_phone_num_format_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2b

    :cond_5e
    sget-object v0, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    goto :goto_2b
.end method

.method public static checkPwd(Landroid/content/Context;Landroid/widget/EditText;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "---------------pwd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    const-string v1, "[a-zA-Z0-9]{6,16}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static checkRegisterPassword(Landroid/content/Context;Landroid/widget/EditText;Z)Z
    .registers 10

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->computeStringLength(Ljava/lang/CharSequence;)I

    move-result v3

    if-nez v3, :cond_2d

    if-eqz p2, :cond_2c

    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_password_empty_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_2c
    :goto_2c
    return v0

    :cond_2d
    const/16 v1, 0x10

    if-le v3, v1, :cond_45

    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_password_formatmore_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2c

    :cond_45
    move v1, v0

    :goto_46
    if-lt v1, v3, :cond_61

    const/4 v1, 0x6

    if-ge v3, v1, :cond_88

    if-eqz p2, :cond_84

    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_password_formatless_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2c

    :cond_61
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-le v4, v5, :cond_6d

    const/16 v5, 0x7f

    if-le v4, v5, :cond_81

    :cond_6d
    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_password_format_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2c

    :cond_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    :cond_84
    invoke-virtual {p1, v6, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2c

    :cond_88
    sget-object v0, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v6, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    goto :goto_2c
.end method

.method public static checkSubAccountRename(Landroid/content/Context;Landroid/widget/EditText;ZLjava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->computeStringLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_1e

    if-eqz p2, :cond_1e

    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p3, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_1d
    return v0

    :cond_1e
    const/16 v2, 0xf

    if-le v1, v2, :cond_36

    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_imei_formatmore_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    :cond_36
    const/4 v0, 0x0

    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    goto :goto_1d
.end method

.method public static checkUserName(Landroid/content/Context;Landroid/widget/EditText;Z)Z
    .registers 15

    const/16 v11, 0x41

    const/16 v10, 0x39

    const/16 v9, 0x30

    const/4 v8, 0x0

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->computeStringLength(Ljava/lang/CharSequence;)I

    move-result v4

    const/16 v0, 0xf

    if-le v4, v0, :cond_34

    sget-object v0, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_username_format_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    move v0, v1

    :goto_33
    return v0

    :cond_34
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v1

    move v0, v1

    :goto_3a
    if-lt v2, v5, :cond_55

    if-ne v0, v5, :cond_ce

    if-eqz p2, :cond_ca

    sget-object v0, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_username_pure_num_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_53
    move v0, v1

    goto :goto_33

    :cond_55
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-nez v2, :cond_8b

    const/16 v7, 0x61

    if-lt v6, v7, :cond_63

    const/16 v7, 0x7a

    if-le v6, v7, :cond_c0

    :cond_63
    if-lt v6, v11, :cond_69

    const/16 v7, 0x5a

    if-le v6, v7, :cond_c0

    :cond_69
    if-lt v6, v9, :cond_6d

    if-le v6, v10, :cond_c0

    :cond_6d
    const/16 v7, 0x4e00

    if-lt v6, v7, :cond_76

    const v7, 0x9f9f

    if-le v6, v7, :cond_c0

    :cond_76
    sget-object v0, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_username_format_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    move v0, v1

    goto :goto_33

    :cond_8b
    const/16 v7, 0x61

    if-lt v6, v7, :cond_93

    const/16 v7, 0x7a

    if-le v6, v7, :cond_c0

    :cond_93
    if-lt v6, v9, :cond_97

    if-le v6, v10, :cond_c0

    :cond_97
    if-lt v6, v11, :cond_9d

    const/16 v7, 0x5a

    if-le v6, v7, :cond_c0

    :cond_9d
    const/16 v7, 0x5f

    if-eq v6, v7, :cond_c0

    const/16 v7, 0x4e00

    if-lt v6, v7, :cond_aa

    const v7, 0x9f9f

    if-le v6, v7, :cond_c0

    :cond_aa
    sget-object v0, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_username_format_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    move v0, v1

    goto/16 :goto_33

    :cond_c0
    if-lt v6, v9, :cond_c6

    if-gt v6, v10, :cond_c6

    add-int/lit8 v0, v0, 0x1

    :cond_c6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3a

    :cond_ca
    invoke-virtual {p1, v8, v8}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_53

    :cond_ce
    const/4 v0, 0x3

    if-ge v4, v0, :cond_ed

    if-eqz p2, :cond_e9

    sget-object v0, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a:Landroid/content/res/Resources;

    const-string v2, "string"

    const-string v3, "vivo_username_format_wrong"

    invoke-static {p0, v2, v3}, Lcom/vivo/sdkplugin/Utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_e6
    move v0, v1

    goto/16 :goto_33

    :cond_e9
    invoke-virtual {p1, v8, v8}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_e6

    :cond_ed
    sget-object v0, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v8, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    goto/16 :goto_33
.end method

.method public static checkVerifyNum(Landroid/content/Context;Landroid/widget/EditText;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "---------------verifyNum: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v0

    :goto_32
    if-lt v1, v3, :cond_36

    const/4 v0, 0x1

    :cond_35
    return v0

    :cond_36
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_35

    const/16 v5, 0x39

    if-gt v4, v5, :cond_35

    add-int/lit8 v1, v1, 0x1

    goto :goto_32
.end method

.method public static checksize(Landroid/content/Context;Landroid/widget/EditText;ZLjava/lang/String;)Z
    .registers 6

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->computeStringLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_1e

    if-eqz p2, :cond_1e

    sget-object v0, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p3, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    sget-object v1, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    goto :goto_1d
.end method

.method public static computeStringLength(Ljava/lang/CharSequence;)I
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    :goto_8
    if-lt v1, v2, :cond_b

    :cond_a
    return v0

    :cond_b
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    add-int/lit8 v0, v0, 0x1

    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_20
    add-int/lit8 v0, v0, 0x2

    goto :goto_1d
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/vivo/sdkplugin/Utils/CheckFormatUtil;->computeStringLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "^[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0
.end method

.method public static isPureNum(Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    move v0, v1

    :goto_7
    if-lt v2, v3, :cond_d

    if-ne v0, v3, :cond_1e

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_1b

    const/16 v5, 0x39

    if-gt v4, v5, :cond_1b

    add-int/lit8 v0, v0, 0x1

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1e
    move v0, v1

    goto :goto_c
.end method
