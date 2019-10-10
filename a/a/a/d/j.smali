.class public La/a/a/d/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:La/a/a/d/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 14
    sget v0, Lcom/xiaomi/micloudsdk/utils/k;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_e

    .line 16
    new-instance v0, La/a/a/d/l;

    invoke-direct {v0}, La/a/a/d/l;-><init>()V

    sput-object v0, La/a/a/d/j;->a:La/a/a/d/c;

    goto :goto_15

    .line 18
    :cond_e
    new-instance v0, La/a/a/d/k;

    invoke-direct {v0}, La/a/a/d/k;-><init>()V

    sput-object v0, La/a/a/d/j;->a:La/a/a/d/c;

    :goto_15
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/SyncResult;Ljava/lang/String;)V
    .registers 3

    .line 23
    sget-object v0, La/a/a/d/j;->a:La/a/a/d/c;

    invoke-interface {v0, p0, p1}, La/a/a/d/c;->a(Landroid/content/SyncResult;Ljava/lang/String;)V

    return-void
.end method
