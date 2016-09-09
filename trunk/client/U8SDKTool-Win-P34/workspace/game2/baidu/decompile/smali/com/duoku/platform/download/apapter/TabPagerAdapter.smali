.class public Lcom/duoku/platform/download/apapter/TabPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/apapter/TabPagerAdapter$PageCallback;
    }
.end annotation


# instance fields
.field private callback:Lcom/duoku/platform/download/apapter/TabPagerAdapter$PageCallback;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Lcom/duoku/platform/download/apapter/TabPagerAdapter$PageCallback;)V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 29
    iput-object p2, p0, Lcom/duoku/platform/download/apapter/TabPagerAdapter;->callback:Lcom/duoku/platform/download/apapter/TabPagerAdapter$PageCallback;

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/TabPagerAdapter;->callback:Lcom/duoku/platform/download/apapter/TabPagerAdapter$PageCallback;

    invoke-interface {v0}, Lcom/duoku/platform/download/apapter/TabPagerAdapter$PageCallback;->getPageCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/TabPagerAdapter;->callback:Lcom/duoku/platform/download/apapter/TabPagerAdapter$PageCallback;

    invoke-interface {v0, p1}, Lcom/duoku/platform/download/apapter/TabPagerAdapter$PageCallback;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/duoku/platform/download/apapter/TabPagerAdapter;->callback:Lcom/duoku/platform/download/apapter/TabPagerAdapter$PageCallback;

    invoke-interface {v0, p1}, Lcom/duoku/platform/download/apapter/TabPagerAdapter$PageCallback;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
