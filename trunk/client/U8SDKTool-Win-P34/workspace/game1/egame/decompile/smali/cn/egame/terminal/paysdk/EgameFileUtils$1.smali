.class final Lcn/egame/terminal/paysdk/EgameFileUtils$1;
.super Ljava/lang/Object;
.source "EgameFileUtils.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/egame/terminal/paysdk/EgameFileUtils;->findFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$end:Ljava/lang/String;

.field final synthetic val$start:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 114
    iput-object p1, p0, Lcn/egame/terminal/paysdk/EgameFileUtils$1;->val$start:Ljava/lang/String;

    iput-object p2, p0, Lcn/egame/terminal/paysdk/EgameFileUtils$1;->val$end:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 5
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lcn/egame/terminal/paysdk/EgameFileUtils$1;->val$start:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcn/egame/terminal/paysdk/EgameFileUtils$1;->val$end:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 120
    :cond_10
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/egame/terminal/paysdk/EgameFileUtils$1;->val$start:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcn/egame/terminal/paysdk/EgameFileUtils$1;->val$end:Ljava/lang/String;

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_50

    :cond_24
    iget-object v0, p0, Lcn/egame/terminal/paysdk/EgameFileUtils$1;->val$start:Ljava/lang/String;

    .line 122
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/egame/terminal/paysdk/EgameFileUtils$1;->val$end:Ljava/lang/String;

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 124
    :cond_38
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/egame/terminal/paysdk/EgameFileUtils$1;->val$start:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 125
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/egame/terminal/paysdk/EgameFileUtils$1;->val$end:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    :cond_50
    const/4 v0, 0x1

    :goto_51
    return v0

    :cond_52
    const/4 v0, 0x0

    goto :goto_51
.end method
