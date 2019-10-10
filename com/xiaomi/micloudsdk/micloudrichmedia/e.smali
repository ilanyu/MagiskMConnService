.class public Lcom/xiaomi/micloudsdk/micloudrichmedia/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "mms"

.field public static final b:Ljava/lang/String; = "ico"

.field public static final c:Ljava/lang/String; = "rec"

.field public static final d:Ljava/lang/String; = "mixin"

.field public static final e:Ljava/lang/String; = "note_img"

.field public static final f:Ljava/lang/String; = "note_rec"

.field public static final g:Ljava/lang/String; = "mixin2"

.field private static final h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/e;->h:Ljava/util/HashSet;

    .line 21
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/e;->h:Ljava/util/HashSet;

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/e;->h:Ljava/util/HashSet;

    const-string v1, "ico"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/e;->h:Ljava/util/HashSet;

    const-string v1, "rec"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/e;->h:Ljava/util/HashSet;

    const-string v1, "mixin"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/e;->h:Ljava/util/HashSet;

    const-string v1, "note_img"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/e;->h:Ljava/util/HashSet;

    const-string v1, "note_rec"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/e;->h:Ljava/util/HashSet;

    const-string v1, "mixin2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    .line 31
    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/e;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "mixin2"

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
