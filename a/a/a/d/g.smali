.class public La/a/a/d/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:La/a/a/d/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 14
    sget v0, Lcom/xiaomi/micloudsdk/utils/k;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_e

    .line 16
    new-instance v0, La/a/a/d/i;

    invoke-direct {v0}, La/a/a/d/i;-><init>()V

    sput-object v0, La/a/a/d/g;->a:La/a/a/d/b;

    goto :goto_15

    .line 18
    :cond_e
    new-instance v0, La/a/a/d/h;

    invoke-direct {v0}, La/a/a/d/h;-><init>()V

    sput-object v0, La/a/a/d/g;->a:La/a/a/d/b;

    :goto_15
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/SyncResult;)Z
    .registers 3

    .line 23
    sget-object v0, La/a/a/d/g;->a:La/a/a/d/b;

    invoke-interface {v0, p0, p1}, La/a/a/d/b;->a(Landroid/content/Context;Landroid/content/SyncResult;)Z

    move-result p0

    return p0
.end method
