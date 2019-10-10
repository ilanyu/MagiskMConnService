.class public Lcn/kuaipan/android/utils/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:Ljava/lang/String; = "%s=?"

.field private static final B:Ljava/lang/String; = "(%s) OR (%s)"

.field private static final C:Ljava/lang/String; = "(%s) AND (%s)"

.field private static final D:Ljava/lang/String; = " AND "

.field private static final E:Ljava/lang/String; = " OR "

.field private static final F:[Ljava/lang/String;

.field public static final a:Ljava/lang/String; = " ASC"

.field public static final b:Ljava/lang/String; = " DESC"

.field public static final c:Ljava/lang/String; = " COLLATE LOCALIZED ASC"

.field public static final d:Ljava/lang/String; = " COLLATE LOCALIZED DESC"

.field public static final e:Ljava/lang/String; = "%s>?"

.field public static final f:Ljava/lang/String; = "%s<?"

.field public static final g:Ljava/lang/String; = "%s=?"

.field public static final h:Ljava/lang/String; = "%s<>?"

.field public static final i:Ljava/lang/String; = "%s>=?"

.field public static final j:Ljava/lang/String; = "%s<=?"

.field public static final k:Ljava/lang/String; = "%s LIKE \'%s\'"

.field public static final l:Ljava/lang/String; = "( %s >= \'%s\' ) AND ( %s < \'%s\' )"

.field public static final m:Ljava/lang/String; = "%s BETWEEN ? AND ?"

.field public static final n:Ljava/lang/String; = "%s IN ( %s )"

.field public static final o:I = 0x0

.field public static final p:I = 0x1

.field public static final q:I = 0x2

.field public static final r:I = 0x3

.field public static final s:I = 0x4

.field public static final t:I = 0x5

.field private static final u:Ljava/lang/String; = "SQLUtility"

.field private static final v:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS %s (%s);"

.field private static final w:Ljava/lang/String; = "CREATE INDEX IF NOT EXISTS %s ON %s (%s);"

.field private static final x:Ljava/lang/String; = "DROP TABLE IF EXISTS %s"

.field private static final y:Ljava/lang/String; = "DROP INDEX IF EXISTS %s"

.field private static final z:Ljava/lang/String; = "REINDEX %s"


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string v0, ""

    const-string v1, "ROLLBACK"

    const-string v2, "ABORT"

    const-string v3, "FAIL"

    const-string v4, "IGNORE"

    const-string v5, "REPLACE"

    .line 179
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuaipan/android/utils/r;->F:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .registers 12

    .line 190
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-lt v0, v1, :cond_26

    const-string v0, "insertWithOnConflict"

    .line 191
    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v6

    aput-object p2, v1, v4

    aput-object p3, v1, v3

    .line 192
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    .line 191
    invoke-static {p0, v0, v1}, Lcn/kuaipan/android/utils/JavaCalls;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    goto :goto_74

    :cond_26
    const/4 v0, 0x5

    if-le p4, v0, :cond_2a

    const/4 p4, 0x0

    :cond_2a
    const/4 v0, 0x0

    if-lez p4, :cond_3b

    const-string v0, "android.database.sqlite.SQLiteDatabase$ConflictAlgorithm"

    .line 200
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 201
    sget-object v1, Lcn/kuaipan/android/utils/r;->F:[Ljava/lang/String;

    aget-object p4, v1, p4

    invoke-static {v0, p4}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    :cond_3b
    const-string p4, "insertWithOnConflict"

    .line 203
    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v6

    aput-object p2, v1, v4

    aput-object p3, v1, v3

    aput-object v0, v1, v2

    invoke-static {p0, p4, v1}, Lcn/kuaipan/android/utils/JavaCalls;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_52

    goto :goto_74

    :catch_52
    move-exception p0

    const-string p1, "SQLUtility"

    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Current SDK Version is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "SQLUtility"

    const-string p2, "Failed to call insertWithOnConflict"

    .line 208
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, -0x1

    :goto_74
    return-wide p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "%s=?"

    const/4 v1, 0x1

    .line 75
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "(%s) OR (%s)"

    .line 105
    invoke-static {v0, p0, p1}, Lcn/kuaipan/android/utils/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    const/4 v0, 0x2

    .line 114
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    move-object p1, p2

    :goto_16
    return-object p1
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 79
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, " AND "

    .line 83
    invoke-static {v0, p0}, Lcn/kuaipan/android/utils/r;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 5

    const-string v0, "DROP TABLE IF EXISTS %s"

    const/4 v1, 0x1

    .line 58
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "CREATE TABLE IF NOT EXISTS %s (%s);"

    const/4 v1, 0x2

    .line 54
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "CREATE INDEX IF NOT EXISTS %s ON %s (%s);"

    const/4 v1, 0x3

    .line 63
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)Z
    .registers 3

    .line 142
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 144
    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public static varargs a([[Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    .line 123
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v2, v0, :cond_f

    aget-object v4, p0, v2

    if-eqz v4, :cond_c

    .line 125
    array-length v4, v4

    add-int/2addr v3, v4

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 129
    :cond_f
    new-array v0, v3, [Ljava/lang/String;

    .line 131
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_14
    if-ge v3, v2, :cond_23

    aget-object v5, p0, v3

    if-eqz v5, :cond_20

    .line 133
    array-length v6, v5

    invoke-static {v5, v1, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    array-length v5, v5

    add-int/2addr v4, v5

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_23
    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "(%s) AND (%s)"

    .line 109
    invoke-static {v0, p0, p1}, Lcn/kuaipan/android/utils/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static varargs b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    if-eqz p1, :cond_3a

    .line 91
    array-length v0, p1

    if-gtz v0, :cond_6

    goto :goto_3a

    .line 94
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%s=?"

    const/4 v2, 0x1

    .line 95
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v5, p1, v4

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    array-length v1, p1

    const/4 v3, 0x1

    :goto_1e
    if-ge v3, v1, :cond_35

    .line 98
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%s=?"

    .line 99
    new-array v6, v2, [Ljava/lang/Object;

    aget-object v7, p1, v3

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 101
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3a
    :goto_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs b([Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, " OR "

    .line 87
    invoke-static {v0, p0}, Lcn/kuaipan/android/utils/r;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 5

    const-string v0, "REINDEX %s"

    const/4 v1, 0x1

    .line 67
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)Z
    .registers 3

    .line 150
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 152
    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public static c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 5

    const-string v0, "DROP INDEX IF EXISTS %s"

    const/4 v1, 0x1

    .line 71
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)Z
    .registers 3

    .line 158
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 160
    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_9
    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public static d(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)Z
    .registers 3

    .line 166
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 168
    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_9
    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method
