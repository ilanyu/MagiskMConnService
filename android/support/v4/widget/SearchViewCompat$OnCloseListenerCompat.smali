.class public abstract Landroid/support/v4/widget/SearchViewCompat$OnCloseListenerCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SearchViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnCloseListenerCompat"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method