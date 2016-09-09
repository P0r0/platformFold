.class Lcom/duoku/platform/view/g$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/g/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/g;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/g$3;->a:Landroid/content/Context;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .registers 8

    .prologue
    .line 258
    const-string v0, "error"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method

.method public a(ILcom/duoku/platform/h/a;I)V
    .registers 15

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 193
    check-cast p2, Lcom/duoku/platform/ui/entity/d;

    .line 194
    invoke-virtual {p2}, Lcom/duoku/platform/ui/entity/d;->a()Ljava/lang/String;

    move-result-object v4

    .line 195
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 196
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 198
    if-eqz p2, :cond_ad

    const-string v0, "2"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 200
    invoke-virtual {p2}, Lcom/duoku/platform/ui/entity/d;->c()Ljava/util/List;

    move-result-object v6

    .line 201
    if-eqz v6, :cond_30

    .line 203
    iget-object v0, p0, Lcom/duoku/platform/view/g$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/q;->e(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v7

    move v1, v2

    .line 204
    :goto_2a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_67

    .line 217
    :cond_30
    invoke-static {v3}, Lcom/duoku/platform/view/g;->a(Ljava/util/List;)V

    .line 219
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v9, :cond_96

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v10, :cond_96

    .line 221
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/d;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/d;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v3

    .line 234
    :goto_52
    sput-object v0, Lcom/duoku/platform/util/Constants;->backAdList:Ljava/util/List;

    .line 235
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 238
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/duoku/platform/util/Constants;->exitAdType:I

    .line 240
    :cond_60
    invoke-virtual {p2}, Lcom/duoku/platform/ui/entity/d;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/util/Constants;->hotGameUrl:Ljava/lang/String;

    .line 241
    return-void

    .line 206
    :cond_67
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/d;

    invoke-virtual {v0}, Lcom/duoku/platform/bean/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/16 v8, 0x9

    if-gt v0, v8, :cond_8c

    .line 208
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/d;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    :goto_88
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2a

    .line 212
    :cond_8c
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/d;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_88

    .line 224
    :cond_96
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v10, :cond_bf

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v9, :cond_bf

    .line 226
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/d;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v3

    .line 228
    goto :goto_52

    .line 229
    :cond_ad
    if-eqz p2, :cond_bf

    const-string v0, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 231
    invoke-virtual {p2}, Lcom/duoku/platform/ui/entity/d;->c()Ljava/util/List;

    move-result-object v0

    .line 232
    invoke-static {v0}, Lcom/duoku/platform/view/g;->a(Ljava/util/List;)V

    goto :goto_52

    :cond_bf
    move-object v0, v3

    goto :goto_52
.end method

.method public a(JJI)V
    .registers 6

    .prologue
    .line 253
    return-void
.end method

.method public a(Lcom/duoku/platform/g/f$a;I)V
    .registers 3

    .prologue
    .line 247
    return-void
.end method
