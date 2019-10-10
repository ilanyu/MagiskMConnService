.class public La/a/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:La/a/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 11
    sget v0, Lcom/xiaomi/micloudsdk/utils/k;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_e

    .line 13
    new-instance v0, La/a/a/a/d;

    invoke-direct {v0}, La/a/a/a/d;-><init>()V

    sput-object v0, La/a/a/a/b;->a:La/a/a/a/a;

    goto :goto_15

    .line 15
    :cond_e
    new-instance v0, La/a/a/a/c;

    invoke-direct {v0}, La/a/a/a/c;-><init>()V

    sput-object v0, La/a/a/a/b;->a:La/a/a/a/a;

    :goto_15
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    .line 20
    sget-object v0, La/a/a/a/b;->a:La/a/a/a/a;

    invoke-interface {v0}, La/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
