.class public final Lcom/baidu/bdgame/sdk/obf/ct;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/ct$a;,
        Lcom/baidu/bdgame/sdk/obf/ct$b;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/ViewGroup;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ct$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<*>;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/baidu/bdgame/sdk/obf/ct$a;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->a:Landroid/app/Activity;

    .line 49
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ct;->b:Landroid/view/ViewGroup;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->c:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->d:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->e:Ljava/util/List;

    .line 54
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/view/ViewGroup;)Lcom/baidu/bdgame/sdk/obf/ct;
    .registers 3

    .prologue
    .line 44
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bdgame/sdk/obf/ct;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method private a(I)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 177
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 178
    if-ge v0, p1, :cond_37

    .line 179
    const/4 v0, 0x0

    .line 190
    :goto_a
    return v0

    .line 182
    :goto_b
    if-lt p1, v1, :cond_35

    .line 183
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->c:Ljava/util/List;

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ct$b;

    .line 184
    iget-object v3, v0, Lcom/baidu/bdgame/sdk/obf/ct$b;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v3}, Lcom/baidu/bdgame/sdk/obf/cs;->c()V

    .line 185
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ct;->b:Landroid/view/ViewGroup;

    iget-object v4, v0, Lcom/baidu/bdgame/sdk/obf/ct$b;->b:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 186
    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ct$b;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->d()V

    .line 188
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->c:Ljava/util/List;

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 182
    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_b

    :cond_35
    move v0, v1

    .line 190
    goto :goto_a

    :cond_37
    move v2, v0

    goto :goto_b
.end method

.method private b(Landroid/os/Bundle;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 167
    if-gtz v0, :cond_b

    move v0, v1

    .line 173
    :goto_a
    return v0

    .line 170
    :cond_b
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ct;->c:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ct$b;

    .line 171
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ct;->b:Landroid/view/ViewGroup;

    iget-object v3, v0, Lcom/baidu/bdgame/sdk/obf/ct$b;->b:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 172
    iget-object v2, v0, Lcom/baidu/bdgame/sdk/obf/ct$b;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v2, v0, v1, p1}, Lcom/baidu/bdgame/sdk/obf/cs;->a(Lcom/baidu/bdgame/sdk/obf/ct$b;ZLandroid/os/Bundle;)V

    .line 173
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private c(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 147
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ct$b;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/ct$b;-><init>()V

    .line 148
    invoke-virtual {p1, p2}, Lcom/baidu/bdgame/sdk/obf/cs;->a(Landroid/os/Bundle;)V

    .line 149
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/ct$b;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    .line 150
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->a:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Lcom/baidu/bdgame/sdk/obf/cs;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 151
    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ct$b;->b:Landroid/view/View;

    .line 152
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ct;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ct;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_32

    .line 155
    invoke-virtual {p1, v4}, Lcom/baidu/bdgame/sdk/obf/cs;->a(Z)V

    .line 160
    :goto_24
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ct;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 161
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ct;->a:Landroid/app/Activity;

    invoke-virtual {p1, v2, v1}, Lcom/baidu/bdgame/sdk/obf/cs;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 162
    invoke-virtual {p1, v0, v4, p2}, Lcom/baidu/bdgame/sdk/obf/cs;->a(Lcom/baidu/bdgame/sdk/obf/ct$b;ZLandroid/os/Bundle;)V

    .line 163
    return-void

    .line 157
    :cond_32
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/baidu/bdgame/sdk/obf/cs;->a(Z)V

    goto :goto_24
.end method

.method private f()V
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 138
    if-gtz v0, :cond_9

    .line 144
    :goto_8
    return-void

    .line 141
    :cond_9
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->c:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ct$b;

    .line 142
    iget-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ct$b;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cs;->c()V

    .line 143
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->b:Landroid/view/ViewGroup;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ct$b;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_8
.end method

.method private g()Z
    .registers 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 195
    if-gtz v0, :cond_a

    .line 196
    const/4 v0, 0x0

    .line 199
    :goto_9
    return v0

    .line 198
    :cond_a
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->c:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ct$b;

    .line 199
    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ct$b;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->a()Z

    move-result v0

    goto :goto_9
.end method


# virtual methods
.method public a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 4

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    .line 78
    :cond_6
    :goto_6
    return-void

    .line 73
    :cond_7
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 74
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_6

    .line 76
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_6
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 7

    .prologue
    .line 217
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->f:Lcom/baidu/bdgame/sdk/obf/ct$a;

    if-eqz v0, :cond_9

    .line 218
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->f:Lcom/baidu/bdgame/sdk/obf/ct$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ct$a;->a(IILandroid/content/Intent;)V

    .line 221
    :cond_9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_12
    if-ltz v1, :cond_29

    .line 222
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ct$b;

    .line 223
    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ct$b;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/cs;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 229
    :goto_24
    return-void

    .line 221
    :cond_25
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_12

    .line 227
    :cond_29
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Miss Controller onActivityResult, requestCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", resultCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", intent:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_60

    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/lz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :cond_60
    const-string v0, "null"

    goto :goto_54
.end method

.method public final a(ILjava/lang/String;Landroid/os/Parcelable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 298
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 299
    const-string v1, "intent_key_callback_result_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    const-string v1, "intent_key_callback_result_desc"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v1, "intent_key_callback_extradata"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 303
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 304
    return-void
.end method

.method public a(Landroid/content/BroadcastReceiver;)V
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 107
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ct;->a()V

    .line 59
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ct;->f()V

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ct;->c(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ct$a;)V
    .registers 2

    .prologue
    .line 206
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->f:Lcom/baidu/bdgame/sdk/obf/ct$a;

    .line 207
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method a(ILandroid/os/Bundle;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ct;->a(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 133
    :cond_7
    :goto_7
    return v0

    .line 130
    :cond_8
    invoke-direct {p0, p2}, Lcom/baidu/bdgame/sdk/obf/ct;->b(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 133
    const/4 v0, 0x1

    goto :goto_7
.end method

.method a(Landroid/os/Bundle;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 118
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ct;->a(I)Z

    .line 119
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ct;->b(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 120
    const/4 v0, 0x0

    .line 122
    :cond_b
    return v0
.end method

.method public b()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public final b(ILjava/lang/String;Landroid/os/Parcelable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ct;->a(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 308
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ct;->e()V

    .line 309
    return-void
.end method

.method public b(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ct;->a()V

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ct;->a(I)Z

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ct;->c(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    .line 67
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ct;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 237
    const/4 v0, 0x1

    .line 239
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_7
.end method

.method public d()V
    .registers 5

    .prologue
    .line 246
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 247
    if-gtz v0, :cond_9

    .line 253
    :goto_8
    return-void

    .line 250
    :cond_9
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ct;->a()V

    .line 251
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ct;->c:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ct$b;

    .line 252
    iget-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ct$b;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/baidu/bdgame/sdk/obf/cs;->a(Lcom/baidu/bdgame/sdk/obf/ct$b;ZLandroid/os/Bundle;)V

    goto :goto_8
.end method

.method public e()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 257
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1b

    .line 258
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/n;

    .line 259
    if-eqz v0, :cond_17

    .line 260
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/n;->a()Lcom/baidu/bdgame/sdk/obf/o;

    .line 257
    :cond_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 263
    :cond_1b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 266
    :goto_20
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3c

    .line 267
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 268
    if-eqz v0, :cond_39

    .line 269
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 266
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 272
    :cond_3c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 274
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4a
    if-ltz v1, :cond_79

    .line 275
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ct$b;

    .line 276
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ct;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_73

    .line 278
    iget-object v2, v0, Lcom/baidu/bdgame/sdk/obf/ct$b;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cs;->c()V

    .line 279
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ct;->b:Landroid/view/ViewGroup;

    iget-object v3, v0, Lcom/baidu/bdgame/sdk/obf/ct$b;->b:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 280
    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ct$b;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->d()V

    .line 274
    :goto_6f
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4a

    .line 283
    :cond_73
    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/ct$b;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->d()V

    goto :goto_6f

    .line 286
    :cond_79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ct;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 287
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 288
    return-void
.end method
