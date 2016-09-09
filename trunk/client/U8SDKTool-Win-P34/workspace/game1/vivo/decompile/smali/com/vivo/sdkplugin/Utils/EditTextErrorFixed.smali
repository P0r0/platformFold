.class public Lcom/vivo/sdkplugin/Utils/EditTextErrorFixed;
.super Landroid/widget/EditText;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/EditTextErrorFixed;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/EditTextErrorFixed;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/EditTextErrorFixed;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .registers 8

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    :try_start_9
    const-string v0, "android.widget.TextView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mEditor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v1, "android.widget.Editor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setErrorIcon"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/drawable/Drawable;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3e} :catch_3f

    goto :goto_2

    :catch_3f
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/EditTextErrorFixed;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/vivo/sdkplugin/Utils/EditTextErrorFixed;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/EditTextErrorFixed;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x43

    if-ne p1, v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_13
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lcom/vivo/sdkplugin/Utils/EditTextErrorFixed;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p2}, Lcom/vivo/sdkplugin/Utils/EditTextErrorFixed;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
