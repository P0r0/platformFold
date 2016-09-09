.class public Lcom/duoku/platform/view/PopupWindowCompat;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/reflect/Field;

.field private static final b:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field private c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private d:Landroid/view/ViewTreeObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 47
    :try_start_1
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "mOnScrollChangedListener"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 48
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_d} :catch_17

    .line 52
    :goto_d
    sput-object v0, Lcom/duoku/platform/view/PopupWindowCompat;->a:Ljava/lang/reflect/Field;

    .line 55
    new-instance v0, Lcom/duoku/platform/view/PopupWindowCompat$1;

    invoke-direct {v0}, Lcom/duoku/platform/view/PopupWindowCompat$1;-><init>()V

    sput-object v0, Lcom/duoku/platform/view/PopupWindowCompat;->b:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 60
    return-void

    .line 49
    :catch_17
    move-exception v1

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 67
    invoke-direct {p0}, Lcom/duoku/platform/view/PopupWindowCompat;->a()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    invoke-direct {p0}, Lcom/duoku/platform/view/PopupWindowCompat;->a()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    invoke-direct {p0}, Lcom/duoku/platform/view/PopupWindowCompat;->a()V

    .line 83
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 112
    sget-object v0, Lcom/duoku/platform/view/PopupWindowCompat;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_15

    .line 114
    :try_start_4
    sget-object v0, Lcom/duoku/platform/view/PopupWindowCompat;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iput-object v0, p0, Lcom/duoku/platform/view/PopupWindowCompat;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 115
    sget-object v0, Lcom/duoku/platform/view/PopupWindowCompat;->a:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/duoku/platform/view/PopupWindowCompat;->b:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_16

    .line 120
    :cond_15
    :goto_15
    return-void

    .line 116
    :catch_16
    move-exception v0

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/view/PopupWindowCompat;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    goto :goto_15
.end method

.method private a(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 137
    iget-object v0, p0, Lcom/duoku/platform/view/PopupWindowCompat;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_2e

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 140
    :goto_e
    iget-object v1, p0, Lcom/duoku/platform/view/PopupWindowCompat;->d:Landroid/view/ViewTreeObserver;

    if-eq v0, v1, :cond_2e

    .line 141
    iget-object v1, p0, Lcom/duoku/platform/view/PopupWindowCompat;->d:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/duoku/platform/view/PopupWindowCompat;->d:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 142
    iget-object v1, p0, Lcom/duoku/platform/view/PopupWindowCompat;->d:Landroid/view/ViewTreeObserver;

    iget-object v2, p0, Lcom/duoku/platform/view/PopupWindowCompat;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 144
    :cond_25
    iput-object v0, p0, Lcom/duoku/platform/view/PopupWindowCompat;->d:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_2e

    .line 145
    iget-object v1, p0, Lcom/duoku/platform/view/PopupWindowCompat;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 149
    :cond_2e
    return-void

    .line 139
    :cond_2f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private b()V
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/duoku/platform/view/PopupWindowCompat;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/duoku/platform/view/PopupWindowCompat;->d:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1a

    .line 125
    iget-object v0, p0, Lcom/duoku/platform/view/PopupWindowCompat;->d:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 126
    iget-object v0, p0, Lcom/duoku/platform/view/PopupWindowCompat;->d:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/duoku/platform/view/PopupWindowCompat;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 128
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/view/PopupWindowCompat;->d:Landroid/view/ViewTreeObserver;

    .line 130
    :cond_1a
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 177
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 179
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/duoku/platform/view/PopupWindowCompat;->setFocusable(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_b

    .line 183
    :goto_7
    invoke-direct {p0}, Lcom/duoku/platform/view/PopupWindowCompat;->b()V

    .line 184
    return-void

    .line 180
    :catch_b
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .registers 4

    .prologue
    .line 153
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 154
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/PopupWindowCompat;->a(Landroid/view/View;)V

    .line 155
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .registers 5

    .prologue
    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 172
    invoke-direct {p0}, Lcom/duoku/platform/view/PopupWindowCompat;->b()V

    .line 173
    return-void
.end method

.method public update(Landroid/view/View;II)V
    .registers 4

    .prologue
    .line 165
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->update(Landroid/view/View;II)V

    .line 166
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/PopupWindowCompat;->a(Landroid/view/View;)V

    .line 167
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .registers 6

    .prologue
    .line 159
    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 160
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/PopupWindowCompat;->a(Landroid/view/View;)V

    .line 161
    return-void
.end method
